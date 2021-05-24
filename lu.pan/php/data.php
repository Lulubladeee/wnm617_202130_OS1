<?php

// phpinfo();
// die;

function makeConn() {
	$host = "localhost";
	$user = "wnm617_yuanyue";
	$pass = "Zyr.1103@";
	$dbname = "wnm617_yuanyue";

	$c = new mysqli($host,$user,$pass,$dbname);
	if($c->connect_errno) die($c->connect_error);
	$c->set_charset('utf8');
	return $c;
}

function mapJoin($a,$f,$d) {
	return implode($d,array_map($f,$a));
}

function altFetchAll($r) {
	$a = [];
	while($row = $r->fetch_assoc())
		$a[] = $row;
	return $a;
}

function makeQuery($mconn,$prepstatement,$preptype,$params) {
	if($preptype!="" && $statement = $mconn->prepare($prepstatement)) {
		if(
			$statement->bind_param($preptype,...$params) &&
			$statement->execute()
		) {
			if(substr($prepstatement,0,6)!="SELECT") {
				return [
					"params"=>$params,
					"qry"=>$prepstatement,
					"result"=>[]
				];
			}
			$r = altFetchAll($statement->get_result());
			return [
				"params"=>$params,
				"qry"=>$prepstatement,
				"result"=>$r
			];
		}
	} else {
		$r = $mconn->query($prepstatement);
		if(!$mconn->errno) return [
			"qry"=>$prepstatement,
			"result"=>altFetchAll($r)
		];
	}
	return [
		"qry"=>$prepstatement,
		"error"=>$mconn->error
	];
}


function makeUpload($file,$folder) {
	$filename = microtime(true). '_' .
		$_FILES[$file]['name'];

	if(@move_uploaded_file(
		$_FILES[$file]['tmp_name'],
		$folder . $filename
	)) return ["result"=>$filename];
	else return [
		"error"=>"File Upload Failed",
		"_FILES"=>$_FILES,
		"filename"=>$filename
	];
}


function makeStatement($mconn, $type, $params) {

	$props_create_users = ["id","username","email","password","age"];
	$props_create_animals = ["uid","name","type","breed","description"];
	$props_create_locations = ["aid","lat","lng","description"];

	switch($type) {
		case 1: return makeQuery($mconn, "SELECT * FROM track_users","",$params);
		case 2: return makeQuery($mconn, "SELECT * FROM track_animals","",$params);
		case 3: return makeQuery($mconn, "SELECT * FROM track_locations","",$params);

		case 4: return makeQuery($mconn, "SELECT * FROM track_animals WHERE uid=?","i",$params);
		case 5: return makeQuery($mconn, "SELECT * FROM track_locations WHERE aid=?","i",$params);

		case 6: return makeQuery($mconn, "SELECT * FROM track_users WHERE id=?","i",$params);
		case 7: return makeQuery($mconn, "SELECT * FROM track_animals WHERE id=?","i",$params);
		case 8: return makeQuery($mconn, "SELECT * FROM track_locations WHERE id=?","i",$params);


		// Create Entries
		case 11:
			// $found = makeQuery($mconn, "SELECT
			// 	id
			// 	FROM track_users
			// 	WHERE email = ? OR username = ?
			// 	","ss",[$params[0],$params[1]]);
			// if(count($found['result']))
			// 	return ["error"=>"That email already exists"];

			makeQuery($mconn, "
				INSERT INTO track_users
				(`username`,`email`,`age`,`bio`)
				VALUES
				(?,?,?,?)
				","ssss",$params);

			return ["result"=>$mconn->insert_id];

		// case 12: return makeQuery($mconn, "
		// 	INSERT INTO track_animals
		// 	(`uid`,`name`,`breed`,`date_create`,`description`)
		// 	VALUES
		// 	(?,?,?,NOW(),?)
		// 	","issss",$params);


			case 12: return makeQuery($mconn, "
			INSERT INTO track_animals
			(`uid`,`name`,`breed`,`description`,`date_create`)
			VALUES
			(?,?,?,?,NOW())
			","isss",$params);


		case 13: return makeQuery($mconn, "
			INSERT INTO track_locations
			(`aid`,`lat`,`lng`,`description`,`img`,`date_create`)
			VALUES
			(?,?,?,?,?,NOW())
			","iddss",$params);



		case 14: return makeQuery($mconn, "
			UPDATE track_users
			SET
			`name`=?,
			
			`email`=?,
			`age`=?,
			`bio`=?
			WHERE id = ?
			","ssssi",$params);
		case 15: return makeQuery($mconn, "
			UPDATE track_animals
			SET
			`name`=?,
			
			`breed`=?,
			`date_create`=?,
			`description`=?
			WHERE id = ?
			","ssssi",$params);
		case 16: return makeQuery($mconn, "
			UPDATE track_locations
			SET
			`lat`=?,
			`lng`=?,
			`description`=?
			WHERE id = ?
			","ssssi",$params);
		case 17: return makeQuery($mconn, "
			UPDATE track_users
			SET
			`password`=?
			WHERE id = ?
			","si",$params);
		// Edit Image After Upload
		case 18: return makeQuery($mconn, "
			UPDATE track_animals
			SET
			`img`=?
			WHERE id = ?
			","si",$params);


		case 19: return makeQuery($mconn, "
			UPDATE track_users
			SET
			`img`=?
			WHERE id = ?
			","si",$params);


		case 20: return makeQuery($mconn, "SELECT
			track_users.*, count(track_animals.id) as animals 
			FROM track_users 
			LEFT JOIN track_animals 
			ON track_users.id = track_animals.uid && track_users.id = track_animals.uid
			WHERE track_users.id=?","i",$params);

		case 21: return makeQuery($mconn, "SELECT
			a.*, l.*
			FROM track_animals a
			LEFT JOIN (
				SELECT aid,lat,lng
				FROM track_locations
				ORDER BY date_create DESC
				-- LIMIT 1
			) AS l
			ON a.id = l.aid
			WHERE a.uid = ?
			GROUP BY id
			","i",$params);

		// case 22: return makeQuery($mconn, "SELECT
		// 	track_users.*, count(track_locations.id) as locations 
		// 	FROM track_users 
		// 	LEFT JOIN track_locations 
		// 	ON track_users.id = track_animals.uid && track_locations.aid = track_animals.id
		// 	WHERE track_users.id=?","i",$params);

		case 31: return makeQuery($mconn, "
			DELETE FROM track_users
			WHERE id=?","i",$params);
		case 32: return makeQuery($mconn, "
			DELETE FROM track_animals
			WHERE id=?","i",$params);
		case 33: return makeQuery($mconn, "
			DELETE FROM track_locations
			WHERE id=?","i",$params);



		case 50: return makeQuery($mconn, "SELECT id FROM track_users WHERE username=? AND password=md5(?)","ss",$params);

		case 60: return makeQuery($mconn, "SELECT
			*
			FROM track_animals
			WHERE 
			(name LIKE ? OR
			type LIKE ? OR
			breed LIKE ? OR
			description LIKE ?) AND
			uid = ?
			","ssssi",$params);
	}
}



if(!empty($_FILES)) {
	$result = makeUpload("image","../uploads/");
	die(json_encode($result));
}

$data = json_decode(file_get_contents("php://input"));

echo json_encode(
	makeStatement(
		makeConn(),
		$data->type,
		$data->params
	),
	JSON_NUMERIC_CHECK
);