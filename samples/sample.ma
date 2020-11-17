//Maya ASCII 2019 scene
//Name: sample.ma
//Last modified: Tue, Nov 17, 2020 02:07:10 PM
//Codeset: UTF-8
requires maya "2019";
requires -nodeType "gameFbxExporter" "gameFbxExporter" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Mac OS X 10.15.7";
createNode transform -s -n "persp";
	rename -uid "C1617DDB-6C4A-3E0E-4F58-87A7F056F106";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.412216835373189 5.8126173727438966 -8.6458659312761519 ;
	setAttr ".r" -type "double3" 146.061647270403 9.8000000000061576 179.9999999999948 ;
	setAttr ".rp" -type "double3" -1.3877787807814457e-17 -8.3266726846886741e-17 -1.7763568394002505e-15 ;
	setAttr ".rpt" -type "double3" -1.0786395624259729e-15 2.4142905401894579e-16 3.6763824449902177e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F3E9EEC2-9B45-9A75-35FB-5194E8249F22";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 10.963087375520972;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.13590701113012837 -0.30808065418026409 0.31681519785042944 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "1E0E59EE-0441-2538-F570-EA8F94BDAEE6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F7695D4F-4247-819D-2EC4-449F0F988240";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "DCDF3F58-9F43-2561-27E5-B08803075257";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "DD1C0A00-DB4F-6E76-140A-04A32EDE83EF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "F2B27F94-F749-DC62-1FD3-088DB706F143";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "312D179F-1342-0EA4-7FFC-228E13445394";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode nucleus -n "nucleus1";
	rename -uid "CCC3AEF2-D54F-91A8-4D61-C39826C65A3F";
	setAttr -s 4 ".nipo";
	setAttr -s 4 ".nips";
createNode transform -n "Target_pPlane1";
	rename -uid "14D8A854-2F42-8496-8B1B-28BA5E374268";
createNode mesh -n "Target_pPlaneShape1" -p "Target_pPlane1";
	rename -uid "A6070FF8-5843-07D2-0A74-0C9A39328E7C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "Target_ClothTriangulate" -p "Target_pPlane1";
	rename -uid "9E0208A5-6746-65E0-1D2E-F68FD455A15A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 121 ".uvst[0].uvsp[0:120]" -type "float2" 0 0 0.1 0 0.2 0 0.30000001
		 0 0.40000001 0 0.5 0 0.60000002 0 0.69999999 0 0.80000001 0 0.90000004 0 1 0 0 0.1
		 0.1 0.1 0.2 0.1 0.30000001 0.1 0.40000001 0.1 0.5 0.1 0.60000002 0.1 0.69999999 0.1
		 0.80000001 0.1 0.90000004 0.1 1 0.1 0 0.2 0.1 0.2 0.2 0.2 0.30000001 0.2 0.40000001
		 0.2 0.5 0.2 0.60000002 0.2 0.69999999 0.2 0.80000001 0.2 0.90000004 0.2 1 0.2 0 0.30000001
		 0.1 0.30000001 0.2 0.30000001 0.30000001 0.30000001 0.40000001 0.30000001 0.5 0.30000001
		 0.60000002 0.30000001 0.69999999 0.30000001 0.80000001 0.30000001 0.90000004 0.30000001
		 1 0.30000001 0 0.40000001 0.1 0.40000001 0.2 0.40000001 0.30000001 0.40000001 0.40000001
		 0.40000001 0.5 0.40000001 0.60000002 0.40000001 0.69999999 0.40000001 0.80000001
		 0.40000001 0.90000004 0.40000001 1 0.40000001 0 0.5 0.1 0.5 0.2 0.5 0.30000001 0.5
		 0.40000001 0.5 0.5 0.5 0.60000002 0.5 0.69999999 0.5 0.80000001 0.5 0.90000004 0.5
		 1 0.5 0 0.60000002 0.1 0.60000002 0.2 0.60000002 0.30000001 0.60000002 0.40000001
		 0.60000002 0.5 0.60000002 0.60000002 0.60000002 0.69999999 0.60000002 0.80000001
		 0.60000002 0.90000004 0.60000002 1 0.60000002 0 0.69999999 0.1 0.69999999 0.2 0.69999999
		 0.30000001 0.69999999 0.40000001 0.69999999 0.5 0.69999999 0.60000002 0.69999999
		 0.69999999 0.69999999 0.80000001 0.69999999 0.90000004 0.69999999 1 0.69999999 0
		 0.80000001 0.1 0.80000001 0.2 0.80000001 0.30000001 0.80000001 0.40000001 0.80000001
		 0.5 0.80000001 0.60000002 0.80000001 0.69999999 0.80000001 0.80000001 0.80000001
		 0.90000004 0.80000001 1 0.80000001 0 0.90000004 0.1 0.90000004 0.2 0.90000004 0.30000001
		 0.90000004 0.40000001 0.90000004 0.5 0.90000004 0.60000002 0.90000004 0.69999999
		 0.90000004 0.80000001 0.90000004 0.90000004 0.90000004 1 0.90000004 0 1 0.1 1 0.2
		 1 0.30000001 1 0.40000001 1 0.5 1 0.60000002 1 0.69999999 1 0.80000001 1 0.90000004
		 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 121 ".vt[0:120]"  -0.5 -1.5085405e-08 0.5 -0.40000001 -1.5085405e-08 0.5
		 -0.30000001 -1.5085405e-08 0.5 -0.19999999 -1.5085405e-08 0.5 -0.099999994 -1.5085405e-08 0.5
		 0 -1.5085405e-08 0.5 0.10000002 -1.5085405e-08 0.5 0.19999999 -1.5085405e-08 0.5
		 0.30000001 -1.5085405e-08 0.5 0.40000004 -1.5085405e-08 0.5 0.5 -1.5085405e-08 0.5
		 -0.5 -1.5085405e-08 0.40000001 -0.40000001 -1.5085405e-08 0.40000001 -0.30000001 -1.5085405e-08 0.40000001
		 -0.19999999 -1.5085405e-08 0.40000001 -0.099999994 -1.5085405e-08 0.40000001 0 -1.5085405e-08 0.40000001
		 0.10000002 -1.5085405e-08 0.40000001 0.19999999 -1.5085405e-08 0.40000001 0.30000001 -1.5085405e-08 0.40000001
		 0.40000004 -1.5085405e-08 0.40000001 0.5 -1.5085405e-08 0.40000001 -0.5 -1.5085405e-08 0.30000001
		 -0.40000001 -1.5085405e-08 0.30000001 -0.30000001 -1.5085405e-08 0.30000001 -0.19999999 -1.5085405e-08 0.30000001
		 -0.099999994 -1.5085405e-08 0.30000001 0 -1.5085405e-08 0.30000001 0.10000002 -1.5085405e-08 0.30000001
		 0.19999999 -1.5085405e-08 0.30000001 0.30000001 -1.5085405e-08 0.30000001 0.40000004 -1.5085405e-08 0.30000001
		 0.5 -1.5085405e-08 0.30000001 -0.5 -1.5085405e-08 0.19999999 -0.40000001 -1.5085405e-08 0.19999999
		 -0.30000001 -1.5085405e-08 0.19999999 -0.19999999 -1.5085405e-08 0.19999999 -0.099999994 -1.5085405e-08 0.19999999
		 0 -1.5085405e-08 0.19999999 0.10000002 -1.5085405e-08 0.19999999 0.19999999 -1.5085405e-08 0.19999999
		 0.30000001 -1.5085405e-08 0.19999999 0.40000004 -1.5085405e-08 0.19999999 0.5 -1.5085405e-08 0.19999999
		 -0.5 -1.5085405e-08 0.099999994 -0.40000001 -1.5085405e-08 0.099999994 -0.30000001 -1.5085405e-08 0.099999994
		 -0.19999999 -1.5085405e-08 0.099999994 -0.099999994 -1.5085405e-08 0.099999994 0 -1.5085405e-08 0.099999994
		 0.10000002 -1.5085405e-08 0.099999994 0.19999999 -1.5085405e-08 0.099999994 0.30000001 -1.5085405e-08 0.099999994
		 0.40000004 -1.5085405e-08 0.099999994 0.5 -1.5085405e-08 0.099999994 -0.5 -1.5085405e-08 0
		 -0.40000001 -1.5085405e-08 0 -0.30000001 -1.5085405e-08 0 -0.19999999 -1.5085405e-08 0
		 -0.099999994 -1.5085405e-08 0 0 -1.5085405e-08 0 0.10000002 -1.5085405e-08 0 0.19999999 -1.5085405e-08 0
		 0.30000001 -1.5085405e-08 0 0.40000004 -1.5085405e-08 0 0.5 -1.5085405e-08 0 -0.5 -1.5085405e-08 -0.10000002
		 -0.40000001 -1.5085405e-08 -0.10000002 -0.30000001 -1.5085405e-08 -0.10000002 -0.19999999 -1.5085405e-08 -0.10000002
		 -0.099999994 -1.5085405e-08 -0.10000002 0 -1.5085405e-08 -0.10000002 0.10000002 -1.5085405e-08 -0.10000002
		 0.19999999 -1.5085405e-08 -0.10000002 0.30000001 -1.5085405e-08 -0.10000002 0.40000004 -1.5085405e-08 -0.10000002
		 0.5 -1.5085405e-08 -0.10000002 -0.5 -1.5085405e-08 -0.19999999 -0.40000001 -1.5085405e-08 -0.19999999
		 -0.30000001 -1.5085405e-08 -0.19999999 -0.19999999 -1.5085405e-08 -0.19999999 -0.099999994 -1.5085405e-08 -0.19999999
		 0 -1.5085405e-08 -0.19999999 0.10000002 -1.5085405e-08 -0.19999999 0.19999999 -1.5085405e-08 -0.19999999
		 0.30000001 -1.5085405e-08 -0.19999999 0.40000004 -1.5085405e-08 -0.19999999 0.5 -1.5085405e-08 -0.19999999
		 -0.5 -1.5085405e-08 -0.30000001 -0.40000001 -1.5085405e-08 -0.30000001 -0.30000001 -1.5085405e-08 -0.30000001
		 -0.19999999 -1.5085405e-08 -0.30000001 -0.099999994 -1.5085405e-08 -0.30000001 0 -1.5085405e-08 -0.30000001
		 0.10000002 -1.5085405e-08 -0.30000001 0.19999999 -1.5085405e-08 -0.30000001 0.30000001 -1.5085405e-08 -0.30000001
		 0.40000004 -1.5085405e-08 -0.30000001 0.5 -1.5085405e-08 -0.30000001 -0.5 -1.5085405e-08 -0.40000004
		 -0.40000001 -1.5085405e-08 -0.40000004 -0.30000001 -1.5085405e-08 -0.40000004 -0.19999999 -1.5085405e-08 -0.40000004
		 -0.099999994 -1.5085405e-08 -0.40000004 0 -1.5085405e-08 -0.40000004 0.10000002 -1.5085405e-08 -0.40000004
		 0.19999999 -1.5085405e-08 -0.40000004 0.30000001 -1.5085405e-08 -0.40000004 0.40000004 -1.5085405e-08 -0.40000004
		 0.5 -1.5085405e-08 -0.40000004 -0.5 -1.5085405e-08 -0.5 -0.40000001 -1.5085405e-08 -0.5
		 -0.30000001 -1.5085405e-08 -0.5 -0.19999999 -1.5085405e-08 -0.5 -0.099999994 -1.5085405e-08 -0.5
		 0 -1.5085405e-08 -0.5 0.10000002 -1.5085405e-08 -0.5 0.19999999 -1.5085405e-08 -0.5
		 0.30000001 -1.5085405e-08 -0.5 0.40000004 -1.5085405e-08 -0.5 0.5 -1.5085405e-08 -0.5;
	setAttr -s 320 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 11 0 1 2 0 1 12 1 2 3 0 2 13 1 3 4 0 3 14 1
		 4 5 0 4 15 1 5 6 0 5 16 1 6 7 0 6 17 1 7 8 0 7 18 1 8 9 0 8 19 1 9 10 0 9 20 1 10 21 0
		 11 12 1 11 22 0 12 13 1 12 23 1 13 14 1 13 24 1 14 15 1 14 25 1 15 16 1 15 26 1 16 17 1
		 16 27 1 17 18 1 17 28 1 18 19 1 18 29 1 19 20 1 19 30 1 20 21 1 20 31 1 21 32 0 22 23 1
		 22 33 0 23 24 1 23 34 1 24 25 1 24 35 1 25 26 1 25 36 1 26 27 1 26 37 1 27 28 1 27 38 1
		 28 29 1 28 39 1 29 30 1 29 40 1 30 31 1 30 41 1 31 32 1 31 42 1 32 43 0 33 34 1 33 44 0
		 34 35 1 34 45 1 35 36 1 35 46 1 36 37 1 36 47 1 37 38 1 37 48 1 38 39 1 38 49 1 39 40 1
		 39 50 1 40 41 1 40 51 1 41 42 1 41 52 1 42 43 1 42 53 1 43 54 0 44 45 1 44 55 0 45 46 1
		 45 56 1 46 47 1 46 57 1 47 48 1 47 58 1 48 49 1 48 59 1 49 50 1 49 60 1 50 51 1 50 61 1
		 51 52 1 51 62 1 52 53 1 52 63 1 53 54 1 53 64 1 54 65 0 55 56 1 55 66 0 56 57 1 56 67 1
		 57 58 1 57 68 1 58 59 1 58 69 1 59 60 1 59 70 1 60 61 1 60 71 1 61 62 1 61 72 1 62 63 1
		 62 73 1 63 64 1 63 74 1 64 65 1 64 75 1 65 76 0 66 67 1 66 77 0 67 68 1 67 78 1 68 69 1
		 68 79 1 69 70 1 69 80 1 70 71 1 70 81 1 71 72 1 71 82 1 72 73 1 72 83 1 73 74 1 73 84 1
		 74 75 1 74 85 1 75 76 1 75 86 1 76 87 0 77 78 1 77 88 0 78 79 1 78 89 1 79 80 1 79 90 1
		 80 81 1 80 91 1 81 82 1 81 92 1 82 83 1 82 93 1 83 84 1 83 94 1 84 85 1 84 95 1 85 86 1
		 85 96 1 86 87 1;
	setAttr ".ed[166:319]" 86 97 1 87 98 0 88 89 1 88 99 0 89 90 1 89 100 1 90 91 1
		 90 101 1 91 92 1 91 102 1 92 93 1 92 103 1 93 94 1 93 104 1 94 95 1 94 105 1 95 96 1
		 95 106 1 96 97 1 96 107 1 97 98 1 97 108 1 98 109 0 99 100 1 99 110 0 100 101 1 100 111 1
		 101 102 1 101 112 1 102 103 1 102 113 1 103 104 1 103 114 1 104 105 1 104 115 1 105 106 1
		 105 116 1 106 107 1 106 117 1 107 108 1 107 118 1 108 109 1 108 119 1 109 120 0 110 111 0
		 111 112 0 112 113 0 113 114 0 114 115 0 115 116 0 116 117 0 117 118 0 118 119 0 119 120 0
		 1 11 1 2 12 1 3 13 1 4 14 1 5 15 1 6 16 1 7 17 1 8 18 1 9 19 1 10 20 1 12 22 1 13 23 1
		 14 24 1 15 25 1 16 26 1 17 27 1 18 28 1 19 29 1 20 30 1 21 31 1 23 33 1 24 34 1 25 35 1
		 26 36 1 27 37 1 28 38 1 29 39 1 30 40 1 31 41 1 32 42 1 34 44 1 35 45 1 36 46 1 37 47 1
		 38 48 1 39 49 1 40 50 1 41 51 1 42 52 1 43 53 1 45 55 1 46 56 1 47 57 1 48 58 1 49 59 1
		 50 60 1 51 61 1 52 62 1 53 63 1 54 64 1 56 66 1 57 67 1 58 68 1 59 69 1 60 70 1 61 71 1
		 62 72 1 63 73 1 64 74 1 65 75 1 67 77 1 68 78 1 69 79 1 70 80 1 71 81 1 72 82 1 73 83 1
		 74 84 1 75 85 1 76 86 1 78 88 1 79 89 1 80 90 1 81 91 1 82 92 1 83 93 1 84 94 1 85 95 1
		 86 96 1 87 97 1 89 99 1 90 100 1 91 101 1 92 102 1 93 103 1 94 104 1 95 105 1 96 106 1
		 97 107 1 98 108 1 100 110 1 101 111 1 102 112 1 103 113 1 104 114 1 105 115 1 106 116 1
		 107 117 1 108 118 1 109 119 1;
	setAttr -s 200 -ch 600 ".fc[0:199]" -type "polyFaces" 
		f 3 0 220 -2
		mu 0 3 0 1 11
		f 3 -221 3 -22
		mu 0 3 11 1 12
		f 3 2 221 -4
		mu 0 3 1 2 12
		f 3 -222 5 -24
		mu 0 3 12 2 13
		f 3 4 222 -6
		mu 0 3 2 3 13
		f 3 -223 7 -26
		mu 0 3 13 3 14
		f 3 6 223 -8
		mu 0 3 3 4 14
		f 3 -224 9 -28
		mu 0 3 14 4 15
		f 3 8 224 -10
		mu 0 3 4 5 15
		f 3 -225 11 -30
		mu 0 3 15 5 16
		f 3 10 225 -12
		mu 0 3 5 6 16
		f 3 -226 13 -32
		mu 0 3 16 6 17
		f 3 12 226 -14
		mu 0 3 6 7 17
		f 3 -227 15 -34
		mu 0 3 17 7 18
		f 3 14 227 -16
		mu 0 3 7 8 18
		f 3 -228 17 -36
		mu 0 3 18 8 19
		f 3 16 228 -18
		mu 0 3 8 9 19
		f 3 -229 19 -38
		mu 0 3 19 9 20
		f 3 18 229 -20
		mu 0 3 9 10 20
		f 3 -230 20 -40
		mu 0 3 20 10 21
		f 3 21 230 -23
		mu 0 3 11 12 22
		f 3 -231 24 -43
		mu 0 3 22 12 23
		f 3 23 231 -25
		mu 0 3 12 13 23
		f 3 -232 26 -45
		mu 0 3 23 13 24
		f 3 25 232 -27
		mu 0 3 13 14 24
		f 3 -233 28 -47
		mu 0 3 24 14 25
		f 3 27 233 -29
		mu 0 3 14 15 25
		f 3 -234 30 -49
		mu 0 3 25 15 26
		f 3 29 234 -31
		mu 0 3 15 16 26
		f 3 -235 32 -51
		mu 0 3 26 16 27
		f 3 31 235 -33
		mu 0 3 16 17 27
		f 3 -236 34 -53
		mu 0 3 27 17 28
		f 3 33 236 -35
		mu 0 3 17 18 28
		f 3 -237 36 -55
		mu 0 3 28 18 29
		f 3 35 237 -37
		mu 0 3 18 19 29
		f 3 -238 38 -57
		mu 0 3 29 19 30
		f 3 37 238 -39
		mu 0 3 19 20 30
		f 3 -239 40 -59
		mu 0 3 30 20 31
		f 3 39 239 -41
		mu 0 3 20 21 31
		f 3 -240 41 -61
		mu 0 3 31 21 32
		f 3 42 240 -44
		mu 0 3 22 23 33
		f 3 -241 45 -64
		mu 0 3 33 23 34
		f 3 44 241 -46
		mu 0 3 23 24 34
		f 3 -242 47 -66
		mu 0 3 34 24 35
		f 3 46 242 -48
		mu 0 3 24 25 35
		f 3 -243 49 -68
		mu 0 3 35 25 36
		f 3 48 243 -50
		mu 0 3 25 26 36
		f 3 -244 51 -70
		mu 0 3 36 26 37
		f 3 50 244 -52
		mu 0 3 26 27 37
		f 3 -245 53 -72
		mu 0 3 37 27 38
		f 3 52 245 -54
		mu 0 3 27 28 38
		f 3 -246 55 -74
		mu 0 3 38 28 39
		f 3 54 246 -56
		mu 0 3 28 29 39
		f 3 -247 57 -76
		mu 0 3 39 29 40
		f 3 56 247 -58
		mu 0 3 29 30 40
		f 3 -248 59 -78
		mu 0 3 40 30 41
		f 3 58 248 -60
		mu 0 3 30 31 41
		f 3 -249 61 -80
		mu 0 3 41 31 42
		f 3 60 249 -62
		mu 0 3 31 32 42
		f 3 -250 62 -82
		mu 0 3 42 32 43
		f 3 63 250 -65
		mu 0 3 33 34 44
		f 3 -251 66 -85
		mu 0 3 44 34 45
		f 3 65 251 -67
		mu 0 3 34 35 45
		f 3 -252 68 -87
		mu 0 3 45 35 46
		f 3 67 252 -69
		mu 0 3 35 36 46
		f 3 -253 70 -89
		mu 0 3 46 36 47
		f 3 69 253 -71
		mu 0 3 36 37 47
		f 3 -254 72 -91
		mu 0 3 47 37 48
		f 3 71 254 -73
		mu 0 3 37 38 48
		f 3 -255 74 -93
		mu 0 3 48 38 49
		f 3 73 255 -75
		mu 0 3 38 39 49
		f 3 -256 76 -95
		mu 0 3 49 39 50
		f 3 75 256 -77
		mu 0 3 39 40 50
		f 3 -257 78 -97
		mu 0 3 50 40 51
		f 3 77 257 -79
		mu 0 3 40 41 51
		f 3 -258 80 -99
		mu 0 3 51 41 52
		f 3 79 258 -81
		mu 0 3 41 42 52
		f 3 -259 82 -101
		mu 0 3 52 42 53
		f 3 81 259 -83
		mu 0 3 42 43 53
		f 3 -260 83 -103
		mu 0 3 53 43 54
		f 3 84 260 -86
		mu 0 3 44 45 55
		f 3 -261 87 -106
		mu 0 3 55 45 56
		f 3 86 261 -88
		mu 0 3 45 46 56
		f 3 -262 89 -108
		mu 0 3 56 46 57
		f 3 88 262 -90
		mu 0 3 46 47 57
		f 3 -263 91 -110
		mu 0 3 57 47 58
		f 3 90 263 -92
		mu 0 3 47 48 58
		f 3 -264 93 -112
		mu 0 3 58 48 59
		f 3 92 264 -94
		mu 0 3 48 49 59
		f 3 -265 95 -114
		mu 0 3 59 49 60
		f 3 94 265 -96
		mu 0 3 49 50 60
		f 3 -266 97 -116
		mu 0 3 60 50 61
		f 3 96 266 -98
		mu 0 3 50 51 61
		f 3 -267 99 -118
		mu 0 3 61 51 62
		f 3 98 267 -100
		mu 0 3 51 52 62
		f 3 -268 101 -120
		mu 0 3 62 52 63
		f 3 100 268 -102
		mu 0 3 52 53 63
		f 3 -269 103 -122
		mu 0 3 63 53 64
		f 3 102 269 -104
		mu 0 3 53 54 64
		f 3 -270 104 -124
		mu 0 3 64 54 65
		f 3 105 270 -107
		mu 0 3 55 56 66
		f 3 -271 108 -127
		mu 0 3 66 56 67
		f 3 107 271 -109
		mu 0 3 56 57 67
		f 3 -272 110 -129
		mu 0 3 67 57 68
		f 3 109 272 -111
		mu 0 3 57 58 68
		f 3 -273 112 -131
		mu 0 3 68 58 69
		f 3 111 273 -113
		mu 0 3 58 59 69
		f 3 -274 114 -133
		mu 0 3 69 59 70
		f 3 113 274 -115
		mu 0 3 59 60 70
		f 3 -275 116 -135
		mu 0 3 70 60 71
		f 3 115 275 -117
		mu 0 3 60 61 71
		f 3 -276 118 -137
		mu 0 3 71 61 72
		f 3 117 276 -119
		mu 0 3 61 62 72
		f 3 -277 120 -139
		mu 0 3 72 62 73
		f 3 119 277 -121
		mu 0 3 62 63 73
		f 3 -278 122 -141
		mu 0 3 73 63 74
		f 3 121 278 -123
		mu 0 3 63 64 74
		f 3 -279 124 -143
		mu 0 3 74 64 75
		f 3 123 279 -125
		mu 0 3 64 65 75
		f 3 -280 125 -145
		mu 0 3 75 65 76
		f 3 126 280 -128
		mu 0 3 66 67 77
		f 3 -281 129 -148
		mu 0 3 77 67 78
		f 3 128 281 -130
		mu 0 3 67 68 78
		f 3 -282 131 -150
		mu 0 3 78 68 79
		f 3 130 282 -132
		mu 0 3 68 69 79
		f 3 -283 133 -152
		mu 0 3 79 69 80
		f 3 132 283 -134
		mu 0 3 69 70 80
		f 3 -284 135 -154
		mu 0 3 80 70 81
		f 3 134 284 -136
		mu 0 3 70 71 81
		f 3 -285 137 -156
		mu 0 3 81 71 82
		f 3 136 285 -138
		mu 0 3 71 72 82
		f 3 -286 139 -158
		mu 0 3 82 72 83
		f 3 138 286 -140
		mu 0 3 72 73 83
		f 3 -287 141 -160
		mu 0 3 83 73 84
		f 3 140 287 -142
		mu 0 3 73 74 84
		f 3 -288 143 -162
		mu 0 3 84 74 85
		f 3 142 288 -144
		mu 0 3 74 75 85
		f 3 -289 145 -164
		mu 0 3 85 75 86
		f 3 144 289 -146
		mu 0 3 75 76 86
		f 3 -290 146 -166
		mu 0 3 86 76 87
		f 3 147 290 -149
		mu 0 3 77 78 88
		f 3 -291 150 -169
		mu 0 3 88 78 89
		f 3 149 291 -151
		mu 0 3 78 79 89
		f 3 -292 152 -171
		mu 0 3 89 79 90
		f 3 151 292 -153
		mu 0 3 79 80 90
		f 3 -293 154 -173
		mu 0 3 90 80 91
		f 3 153 293 -155
		mu 0 3 80 81 91
		f 3 -294 156 -175
		mu 0 3 91 81 92
		f 3 155 294 -157
		mu 0 3 81 82 92
		f 3 -295 158 -177
		mu 0 3 92 82 93
		f 3 157 295 -159
		mu 0 3 82 83 93
		f 3 -296 160 -179
		mu 0 3 93 83 94
		f 3 159 296 -161
		mu 0 3 83 84 94
		f 3 -297 162 -181
		mu 0 3 94 84 95
		f 3 161 297 -163
		mu 0 3 84 85 95
		f 3 -298 164 -183
		mu 0 3 95 85 96
		f 3 163 298 -165
		mu 0 3 85 86 96
		f 3 -299 166 -185
		mu 0 3 96 86 97
		f 3 165 299 -167
		mu 0 3 86 87 97
		f 3 -300 167 -187
		mu 0 3 97 87 98
		f 3 168 300 -170
		mu 0 3 88 89 99
		f 3 -301 171 -190
		mu 0 3 99 89 100
		f 3 170 301 -172
		mu 0 3 89 90 100
		f 3 -302 173 -192
		mu 0 3 100 90 101
		f 3 172 302 -174
		mu 0 3 90 91 101
		f 3 -303 175 -194
		mu 0 3 101 91 102
		f 3 174 303 -176
		mu 0 3 91 92 102
		f 3 -304 177 -196
		mu 0 3 102 92 103
		f 3 176 304 -178
		mu 0 3 92 93 103
		f 3 -305 179 -198
		mu 0 3 103 93 104
		f 3 178 305 -180
		mu 0 3 93 94 104
		f 3 -306 181 -200
		mu 0 3 104 94 105
		f 3 180 306 -182
		mu 0 3 94 95 105
		f 3 -307 183 -202
		mu 0 3 105 95 106
		f 3 182 307 -184
		mu 0 3 95 96 106
		f 3 -308 185 -204
		mu 0 3 106 96 107
		f 3 184 308 -186
		mu 0 3 96 97 107
		f 3 -309 187 -206
		mu 0 3 107 97 108
		f 3 186 309 -188
		mu 0 3 97 98 108
		f 3 -310 188 -208
		mu 0 3 108 98 109
		f 3 189 310 -191
		mu 0 3 99 100 110
		f 3 -311 192 -211
		mu 0 3 110 100 111
		f 3 191 311 -193
		mu 0 3 100 101 111
		f 3 -312 194 -212
		mu 0 3 111 101 112
		f 3 193 312 -195
		mu 0 3 101 102 112
		f 3 -313 196 -213
		mu 0 3 112 102 113
		f 3 195 313 -197
		mu 0 3 102 103 113
		f 3 -314 198 -214
		mu 0 3 113 103 114
		f 3 197 314 -199
		mu 0 3 103 104 114
		f 3 -315 200 -215
		mu 0 3 114 104 115
		f 3 199 315 -201
		mu 0 3 104 105 115
		f 3 -316 202 -216
		mu 0 3 115 105 116
		f 3 201 316 -203
		mu 0 3 105 106 116
		f 3 -317 204 -217
		mu 0 3 116 106 117
		f 3 203 317 -205
		mu 0 3 106 107 117
		f 3 -318 206 -218
		mu 0 3 117 107 118
		f 3 205 318 -207
		mu 0 3 107 108 118
		f 3 -319 208 -219
		mu 0 3 118 108 119
		f 3 207 319 -209
		mu 0 3 108 109 119
		f 3 -320 209 -220
		mu 0 3 119 109 120;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".qsp" 0;
createNode transform -n "Target_nCloth1";
	rename -uid "57A6EA89-064A-F70F-EA09-F2B01193C6EE";
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
createNode nCloth -n "Target_nClothShape1" -p "Target_nCloth1";
	rename -uid "3E3E3B20-F743-8990-CB4A-338E8B9E2CA0";
	addAttr -ci true -sn "lifespan" -ln "lifespan" -at "double";
	addAttr -s false -ci true -sn "lifespanPP" -ln "lifespanPP" -dt "doubleArray";
	addAttr -ci true -h true -sn "lifespanPP0" -ln "lifespanPP0" -dt "doubleArray";
	setAttr -k off ".v";
	setAttr ".gf" -type "Int32Array" 0 ;
	setAttr ".pos0" -type "vectorArray" 0 ;
	setAttr ".vel0" -type "vectorArray" 0 ;
	setAttr ".acc0" -type "vectorArray" 0 ;
	setAttr ".mas0" -type "doubleArray" 0 ;
	setAttr ".id0" -type "doubleArray" 0 ;
	setAttr ".nid" 121;
	setAttr ".bt0" -type "doubleArray" 0 ;
	setAttr ".ag0" -type "doubleArray" 0 ;
	setAttr -k off ".dve";
	setAttr -k off ".lfm";
	setAttr -k off ".lfr";
	setAttr -k off ".ead";
	setAttr ".irbx" -type "string" "";
	setAttr ".irax" -type "string" "";
	setAttr ".icx" -type "string" "";
	setAttr -k off ".dw";
	setAttr -k off ".fiw";
	setAttr -k off ".con";
	setAttr -k off ".eiw";
	setAttr -k off ".mxc";
	setAttr -k off ".lod";
	setAttr -k off ".inh";
	setAttr -k off ".stf";
	setAttr -k off ".igs";
	setAttr -k off ".ecfh";
	setAttr -k off ".tgs";
	setAttr -k off ".gsm";
	setAttr -k off ".chd";
	setAttr ".chw" 181;
	setAttr -k off ".trd";
	setAttr -k off ".prt";
	setAttr ".thss" 0.014863121323287487;
	setAttr ".scfl" 3;
	setAttr ".por" 0.059452485293149948;
	setAttr -s 2 ".fsc[0:1]"  0 1 1 1 0 1;
	setAttr -s 2 ".pfdo[0:1]"  0 1 1 1 0 1;
	setAttr ".lsou" yes;
	setAttr -k on ".lifespan" 1;
	setAttr ".lifespanPP0" -type "doubleArray" 0 ;
createNode transform -n "Background";
	rename -uid "15278F9C-A640-0B26-5BD5-B3851CEFEB3B";
createNode transform -n "Background_pSphere1" -p "Background";
	rename -uid "F13783B1-C044-5FFF-2C2D-CF947661A5E6";
	setAttr ".s" -type "double3" 0.74468827334875365 1 0.74468827334875365 ;
createNode mesh -n "Background_pSphereShape1" -p "Background_pSphere1";
	rename -uid "A62082DC-7B41-272A-D716-AC9D4B6217A6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".qsp" 0;
createNode transform -n "Background_pCube2" -p "Background";
	rename -uid "013DDBA6-6E45-3B0F-8DA9-C5A581B40B94";
	setAttr ".t" -type "double3" -2.9063147100147244 -0.8522199660997487 -0.1447949791083154 ;
	setAttr ".r" -type "double3" 0 0 -60.224510007494331 ;
	setAttr ".s" -type "double3" 5.5594180240822428 0.16591904470792546 5.5594180240822428 ;
createNode mesh -n "Background_pCubeShape2" -p "Background_pCube2";
	rename -uid "7C9CBA4F-4147-D03E-785F-4489B829982B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".qsp" 0;
createNode transform -n "Background_nRigid4" -p "Background";
	rename -uid "BBB35805-2D46-48C7-B94A-E78749DC5F80";
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
createNode nRigid -n "Background_nRigidShape4" -p "Background_nRigid4";
	rename -uid "EA6E185B-2242-194E-CE39-E298684C4865";
	addAttr -ci true -sn "lifespan" -ln "lifespan" -at "double";
	addAttr -s false -ci true -sn "lifespanPP" -ln "lifespanPP" -dt "doubleArray";
	addAttr -ci true -h true -sn "lifespanPP0" -ln "lifespanPP0" -dt "doubleArray";
	setAttr -k off ".v";
	setAttr ".gf" -type "Int32Array" 0 ;
	setAttr ".pos0" -type "vectorArray" 0 ;
	setAttr ".vel0" -type "vectorArray" 0 ;
	setAttr ".acc0" -type "vectorArray" 0 ;
	setAttr ".mas0" -type "doubleArray" 0 ;
	setAttr ".id0" -type "doubleArray" 0 ;
	setAttr ".nid" 8;
	setAttr ".bt0" -type "doubleArray" 0 ;
	setAttr ".ag0" -type "doubleArray" 0 ;
	setAttr -k off ".dve";
	setAttr -k off ".lfm";
	setAttr -k off ".lfr";
	setAttr -k off ".ead";
	setAttr ".irbx" -type "string" "";
	setAttr ".irax" -type "string" "";
	setAttr ".icx" -type "string" "";
	setAttr -k off ".dw";
	setAttr -k off ".fiw";
	setAttr -k off ".con";
	setAttr -k off ".eiw";
	setAttr -k off ".mxc";
	setAttr -k off ".lod";
	setAttr -k off ".inh";
	setAttr -k off ".stf";
	setAttr -k off ".igs";
	setAttr -k off ".ecfh";
	setAttr -k off ".tgs";
	setAttr -k off ".gsm";
	setAttr -k off ".chd";
	setAttr ".chw" 181;
	setAttr -k off ".trd";
	setAttr -k off ".prt";
	setAttr ".thss" 0.032224655151367188;
	setAttr ".actv" no;
	setAttr ".scld" no;
	setAttr ".por" 0.12889862060546875;
	setAttr ".tpc" yes;
	setAttr -s 2 ".fsc[0:1]"  0 1 1 1 0 1;
	setAttr -s 2 ".pfdo[0:1]"  0 1 1 1 0 1;
	setAttr -k on ".lifespan" 1;
	setAttr ".lifespanPP0" -type "doubleArray" 0 ;
createNode transform -n "Background_nRigid3" -p "Background";
	rename -uid "879BF437-9B4C-75F0-C6F9-BD80623BCF24";
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
createNode nRigid -n "Background_nRigidShape3" -p "Background_nRigid3";
	rename -uid "4A9EEE93-E946-0A4F-EC7B-BBB84E631DB5";
	addAttr -ci true -sn "lifespan" -ln "lifespan" -at "double";
	addAttr -s false -ci true -sn "lifespanPP" -ln "lifespanPP" -dt "doubleArray";
	addAttr -ci true -h true -sn "lifespanPP0" -ln "lifespanPP0" -dt "doubleArray";
	setAttr -k off ".v";
	setAttr ".gf" -type "Int32Array" 0 ;
	setAttr ".pos0" -type "vectorArray" 0 ;
	setAttr ".vel0" -type "vectorArray" 0 ;
	setAttr ".acc0" -type "vectorArray" 0 ;
	setAttr ".mas0" -type "doubleArray" 0 ;
	setAttr ".id0" -type "doubleArray" 0 ;
	setAttr ".nid" 8;
	setAttr ".bt0" -type "doubleArray" 0 ;
	setAttr ".ag0" -type "doubleArray" 0 ;
	setAttr -k off ".dve";
	setAttr -k off ".lfm";
	setAttr -k off ".lfr";
	setAttr -k off ".ead";
	setAttr ".irbx" -type "string" "";
	setAttr ".irax" -type "string" "";
	setAttr ".icx" -type "string" "";
	setAttr -k off ".dw";
	setAttr -k off ".fiw";
	setAttr -k off ".con";
	setAttr -k off ".eiw";
	setAttr -k off ".mxc";
	setAttr -k off ".lod";
	setAttr -k off ".inh";
	setAttr -k off ".stf";
	setAttr -k off ".igs";
	setAttr -k off ".ecfh";
	setAttr -k off ".tgs";
	setAttr -k off ".gsm";
	setAttr -k off ".chd";
	setAttr ".chw" 181;
	setAttr -k off ".trd";
	setAttr -k off ".prt";
	setAttr ".thss" 0.030543508008122444;
	setAttr ".actv" no;
	setAttr ".scld" no;
	setAttr ".por" 0.12217403203248978;
	setAttr ".tpc" yes;
	setAttr -s 2 ".fsc[0:1]"  0 1 1 1 0 1;
	setAttr -s 2 ".pfdo[0:1]"  0 1 1 1 0 1;
	setAttr -k on ".lifespan" 1;
	setAttr ".lifespanPP0" -type "doubleArray" 0 ;
createNode transform -n "Background_pCube1" -p "Background";
	rename -uid "FA2DF79F-DC44-7BA1-F776-2DB30BB2DC1B";
	setAttr ".t" -type "double3" 0 -0.8522199660997487 0 ;
	setAttr ".s" -type "double3" 7.0351666345886095 0.16591904470792546 7.0351666345886095 ;
createNode mesh -n "Background_pCubeShape1" -p "Background_pCube1";
	rename -uid "632455C5-2A49-D201-343D-E5B7D3BA3FAA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".qsp" 0;
createNode transform -n "Background_nRigid1" -p "Background";
	rename -uid "7E3836E8-C249-B0CE-B6A4-BBA20C3AC9ED";
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
createNode nRigid -n "Background_nRigidShape1" -p "Background_nRigid1";
	rename -uid "14C9517D-CE47-A334-7356-A98992A5D911";
	addAttr -ci true -sn "lifespan" -ln "lifespan" -at "double";
	addAttr -s false -ci true -sn "lifespanPP" -ln "lifespanPP" -dt "doubleArray";
	addAttr -ci true -h true -sn "lifespanPP0" -ln "lifespanPP0" -dt "doubleArray";
	setAttr -k off ".v";
	setAttr ".gf" -type "Int32Array" 0 ;
	setAttr ".pos0" -type "vectorArray" 0 ;
	setAttr ".vel0" -type "vectorArray" 0 ;
	setAttr ".acc0" -type "vectorArray" 0 ;
	setAttr ".mas0" -type "doubleArray" 0 ;
	setAttr ".id0" -type "doubleArray" 0 ;
	setAttr ".nid" 382;
	setAttr ".bt0" -type "doubleArray" 0 ;
	setAttr ".ag0" -type "doubleArray" 0 ;
	setAttr -k off ".dve";
	setAttr -k off ".lfm";
	setAttr -k off ".lfr";
	setAttr -k off ".ead";
	setAttr ".irbx" -type "string" "";
	setAttr ".irax" -type "string" "";
	setAttr ".icx" -type "string" "";
	setAttr -k off ".dw";
	setAttr -k off ".fiw";
	setAttr -k off ".con";
	setAttr -k off ".eiw";
	setAttr -k off ".mxc";
	setAttr -k off ".lod";
	setAttr -k off ".inh";
	setAttr -k off ".stf";
	setAttr -k off ".igs";
	setAttr -k off ".ecfh";
	setAttr -k off ".tgs";
	setAttr -k off ".gsm";
	setAttr -k off ".chd";
	setAttr ".chw" 181;
	setAttr -k off ".trd";
	setAttr -k off ".prt";
	setAttr ".thss" 0.012131096795201302;
	setAttr ".actv" no;
	setAttr ".scld" no;
	setAttr ".por" 0.048524387180805206;
	setAttr ".tpc" yes;
	setAttr -s 2 ".fsc[0:1]"  0 1 1 1 0 1;
	setAttr -s 2 ".pfdo[0:1]"  0 1 1 1 0 1;
	setAttr -k on ".lifespan" 1;
	setAttr ".lifespanPP0" -type "doubleArray" 0 ;
createNode transform -n "Background_pTorus1" -p "Background";
	rename -uid "A985343F-9144-D313-21E3-B6B30B535C2F";
	setAttr ".t" -type "double3" -0.021714954723849711 0.31069059573110264 0 ;
	setAttr ".r" -type "double3" 0 0 14.987664415233102 ;
	setAttr ".s" -type "double3" 1 0.40466017235987295 1 ;
createNode mesh -n "Background_pTorusShape1" -p "Background_pTorus1";
	rename -uid "D5E61D27-6D48-4AB4-38C1-579C5F00AF8C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.49999992176890373 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".qsp" 0;
createNode transform -n "Background_nRigid2" -p "Background";
	rename -uid "6C49FF87-6B44-02C5-1844-9BA4B3F9B6A4";
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -l on ".s";
createNode nRigid -n "Background_nRigidShape2" -p "Background_nRigid2";
	rename -uid "FC6020AB-3444-6EEB-BD6F-DFB7A5765C2A";
	addAttr -ci true -sn "lifespan" -ln "lifespan" -at "double";
	addAttr -s false -ci true -sn "lifespanPP" -ln "lifespanPP" -dt "doubleArray";
	addAttr -ci true -h true -sn "lifespanPP0" -ln "lifespanPP0" -dt "doubleArray";
	setAttr -k off ".v";
	setAttr ".gf" -type "Int32Array" 0 ;
	setAttr ".pos0" -type "vectorArray" 0 ;
	setAttr ".vel0" -type "vectorArray" 0 ;
	setAttr ".acc0" -type "vectorArray" 0 ;
	setAttr ".mas0" -type "doubleArray" 0 ;
	setAttr ".id0" -type "doubleArray" 0 ;
	setAttr ".nid" 400;
	setAttr ".bt0" -type "doubleArray" 0 ;
	setAttr ".ag0" -type "doubleArray" 0 ;
	setAttr -k off ".dve";
	setAttr -k off ".lfm";
	setAttr -k off ".lfr";
	setAttr -k off ".ead";
	setAttr ".irbx" -type "string" "";
	setAttr ".irax" -type "string" "";
	setAttr ".icx" -type "string" "";
	setAttr -k off ".dw";
	setAttr -k off ".fiw";
	setAttr -k off ".con";
	setAttr -k off ".eiw";
	setAttr -k off ".mxc";
	setAttr -k off ".lod";
	setAttr -k off ".inh";
	setAttr -k off ".stf";
	setAttr -k off ".igs";
	setAttr -k off ".ecfh";
	setAttr -k off ".tgs";
	setAttr -k off ".gsm";
	setAttr -k off ".chd";
	setAttr ".chw" 181;
	setAttr -k off ".trd";
	setAttr -k off ".prt";
	setAttr ".thss" 0.01697649247944355;
	setAttr ".actv" no;
	setAttr ".scld" no;
	setAttr ".por" 0.0679059699177742;
	setAttr ".tpc" yes;
	setAttr -s 2 ".fsc[0:1]"  0 1 1 1 0 1;
	setAttr -s 2 ".pfdo[0:1]"  0 1 1 1 0 1;
	setAttr -k on ".lifespan" 1;
	setAttr ".lifespanPP0" -type "doubleArray" 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D0D7EBF7-BC49-1F34-78F6-FF8D1F49BAE9";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "964F7264-424A-C85D-5F5E-BDBFEEEEAAC9";
createNode displayLayer -n "defaultLayer";
	rename -uid "E838CE43-C241-265A-7423-04B8F73CA352";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D91E9887-4341-8727-60E2-40B933395BED";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "0A21AE50-1D45-2FD8-0FC9-2DB1F79AB1C9";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "21B24F50-0C47-2C32-E09B-41BC21A233A4";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "F1EFA140-A94D-C0AC-E006-36BB04E79061";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8F9EBE11-FE48-19FA-8C14-6F94683C3A0F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 842\n            -height 684\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n"
		+ "            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 842\\n    -height 684\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 842\\n    -height 684\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B6ABB84F-0A4C-57B1-D7CA-709286E3B5DA";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 180 -ast 0 -aet 200 ";
	setAttr ".st" 6;
createNode shadingEngine -n "lambert2SG";
	rename -uid "9AC49224-5A43-6617-BAE5-A3BB91020B6E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "F6811D44-AB43-7715-E5FF-878105A490D1";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "BFA9631B-5443-941C-161F-F8AA7611EE24";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1257.9928967805802 -481.42673939048694 ;
	setAttr ".tgi[0].vh" -type "double2" 703.4355967078244 663.56958929563757 ;
	setAttr -s 16 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -151.58206176757812;
	setAttr ".tgi[0].ni[0].y" -143.20762634277344;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 392.85714721679688;
	setAttr ".tgi[0].ni[1].y" 342.85714721679688;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -835.71429443359375;
	setAttr ".tgi[0].ni[2].y" 230;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -528.5714111328125;
	setAttr ".tgi[0].ni[3].y" 242.85714721679688;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 392.85714721679688;
	setAttr ".tgi[0].ni[4].y" 244.28572082519531;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -221.42857360839844;
	setAttr ".tgi[0].ni[5].y" 241.42857360839844;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 392.85714721679688;
	setAttr ".tgi[0].ni[6].y" 124.28571319580078;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -835.71429443359375;
	setAttr ".tgi[0].ni[7].y" 328.57144165039062;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -528.5714111328125;
	setAttr ".tgi[0].ni[8].y" 144.28572082519531;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 85.714286804199219;
	setAttr ".tgi[0].ni[9].y" 222.85714721679688;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -1142.857177734375;
	setAttr ".tgi[0].ni[10].y" 367.14285278320312;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" -1142.857177734375;
	setAttr ".tgi[0].ni[11].y" 268.57144165039062;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" -528.5714111328125;
	setAttr ".tgi[0].ni[12].y" 341.42855834960938;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 338.096435546875;
	setAttr ".tgi[0].ni[13].y" -451.926513671875;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" -116.73433685302734;
	setAttr ".tgi[0].ni[14].y" -272.314453125;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 338.096435546875;
	setAttr ".tgi[0].ni[15].y" -324.78366088867188;
	setAttr ".tgi[0].ni[15].nvs" 18304;
createNode polySphere -n "polySphere1";
	rename -uid "947EA8A8-5445-2FCF-FF73-E6B6DD4CA203";
createNode lambert -n "lambert3";
	rename -uid "E327A1A7-114E-B728-8F15-E68B2E4485BB";
	setAttr ".c" -type "float3" 0.4156 0.5607 0.81559998 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "7DCCAE9E-0B4C-9C48-C2C4-77A37805AB32";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "8E9CE76B-DC4E-2F9D-7F8F-D081310B3310";
createNode polyTorus -n "polyTorus1";
	rename -uid "84039EA0-9A43-2B97-7B62-9985C97DB805";
createNode polyPlane -n "polyPlane1";
	rename -uid "A22FA1BC-FE46-9323-BE35-C589F078A9B2";
	setAttr ".cuv" 2;
createNode polyCube -n "polyCube1";
	rename -uid "00CA07AB-6D48-2C02-29C7-02AF968F9B53";
	setAttr ".cuv" 4;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "F29520A1-724D-FC28-4BB3-2AB974E34DBE";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -327.38093937200267 -3.5714284295127645 ;
	setAttr ".tgi[0].vh" -type "double2" -55.9523787290332 334.5237962310282 ;
	setAttr -s 28 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -350;
	setAttr ".tgi[0].ni[0].y" 2758.571533203125;
	setAttr ".tgi[0].ni[0].nvs" 2658;
	setAttr ".tgi[0].ni[1].x" -162.85714721679688;
	setAttr ".tgi[0].ni[1].y" 1984.2857666015625;
	setAttr ".tgi[0].ni[1].nvs" 2786;
	setAttr ".tgi[0].ni[2].x" -91.428573608398438;
	setAttr ".tgi[0].ni[2].y" -74.285713195800781;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -670;
	setAttr ".tgi[0].ni[3].y" 2351.428466796875;
	setAttr ".tgi[0].ni[3].nvs" 2066;
	setAttr ".tgi[0].ni[4].x" -91.428573608398438;
	setAttr ".tgi[0].ni[4].y" -80;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 100;
	setAttr ".tgi[0].ni[5].y" -3317.142822265625;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" 22.857143402099609;
	setAttr ".tgi[0].ni[6].y" -2061.428466796875;
	setAttr ".tgi[0].ni[6].nvs" 2786;
	setAttr ".tgi[0].ni[7].x" -350;
	setAttr ".tgi[0].ni[7].y" 1625.7142333984375;
	setAttr ".tgi[0].ni[7].nvs" 2658;
	setAttr ".tgi[0].ni[8].x" 100;
	setAttr ".tgi[0].ni[8].y" -4344.28564453125;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" 287.14285278320312;
	setAttr ".tgi[0].ni[9].y" -1500;
	setAttr ".tgi[0].ni[9].nvs" 1923;
	setAttr ".tgi[0].ni[10].x" 35.714286804199219;
	setAttr ".tgi[0].ni[10].y" 134.28572082519531;
	setAttr ".tgi[0].ni[10].nvs" 2339;
	setAttr ".tgi[0].ni[11].x" -670;
	setAttr ".tgi[0].ni[11].y" 3472.857177734375;
	setAttr ".tgi[0].ni[11].nvs" 2066;
	setAttr ".tgi[0].ni[12].x" 22.857143402099609;
	setAttr ".tgi[0].ni[12].y" 182.85714721679688;
	setAttr ".tgi[0].ni[12].nvs" 2786;
	setAttr ".tgi[0].ni[13].x" -91.428573608398438;
	setAttr ".tgi[0].ni[13].y" -60;
	setAttr ".tgi[0].ni[13].nvs" 1923;
	setAttr ".tgi[0].ni[14].x" 22.857143402099609;
	setAttr ".tgi[0].ni[14].y" 4671.4287109375;
	setAttr ".tgi[0].ni[14].nvs" 2786;
	setAttr ".tgi[0].ni[15].x" 100;
	setAttr ".tgi[0].ni[15].y" -2208.571533203125;
	setAttr ".tgi[0].ni[15].nvs" 1923;
	setAttr ".tgi[0].ni[16].x" 22.857143402099609;
	setAttr ".tgi[0].ni[16].y" 2427.142822265625;
	setAttr ".tgi[0].ni[16].nvs" 2786;
	setAttr ".tgi[0].ni[17].x" 100;
	setAttr ".tgi[0].ni[17].y" -1992.857177734375;
	setAttr ".tgi[0].ni[17].nvs" 1923;
	setAttr ".tgi[0].ni[18].x" 100;
	setAttr ".tgi[0].ni[18].y" -3227.142822265625;
	setAttr ".tgi[0].ni[18].nvs" 1923;
	setAttr ".tgi[0].ni[19].x" -91.428573608398438;
	setAttr ".tgi[0].ni[19].y" -90;
	setAttr ".tgi[0].ni[19].nvs" 1923;
	setAttr ".tgi[0].ni[20].x" -670;
	setAttr ".tgi[0].ni[20].y" 117.14286041259766;
	setAttr ".tgi[0].ni[20].nvs" 2066;
	setAttr ".tgi[0].ni[21].x" -350;
	setAttr ".tgi[0].ni[21].y" 504.28570556640625;
	setAttr ".tgi[0].ni[21].nvs" 2658;
	setAttr ".tgi[0].ni[22].x" 221.42857360839844;
	setAttr ".tgi[0].ni[22].y" 1800;
	setAttr ".tgi[0].ni[22].nvs" 2658;
	setAttr ".tgi[0].ni[23].x" 22.857143402099609;
	setAttr ".tgi[0].ni[23].y" 4837.14306640625;
	setAttr ".tgi[0].ni[23].nvs" 2339;
	setAttr ".tgi[0].ni[24].x" -350;
	setAttr ".tgi[0].ni[24].y" 4837.14306640625;
	setAttr ".tgi[0].ni[24].nvs" 1923;
	setAttr ".tgi[0].ni[25].x" -535.71429443359375;
	setAttr ".tgi[0].ni[25].y" -848.5714111328125;
	setAttr ".tgi[0].ni[25].nvs" 2658;
	setAttr ".tgi[0].ni[26].x" -855.71429443359375;
	setAttr ".tgi[0].ni[26].y" -1255.7142333984375;
	setAttr ".tgi[0].ni[26].nvs" 2066;
	setAttr ".tgi[0].ni[27].x" -350;
	setAttr ".tgi[0].ni[27].y" 3880;
	setAttr ".tgi[0].ni[27].nvs" 2658;
createNode gameFbxExporter -n "gameExporterPreset1";
	rename -uid "6A513C57-944C-BBF0-E04B-B79C8C598183";
	setAttr ".pn" -type "string" "モデルの既定";
	setAttr ".ils" yes;
	setAttr ".ilu" yes;
	setAttr ".esi" 2;
	setAttr ".ebm" yes;
	setAttr ".inc" yes;
	setAttr ".fv" -type "string" "FBX201800";
	setAttr ".exp" -type "string" "/Users/s06870/Develop/private/VAT/Maya/FBX";
	setAttr ".exf" -type "string" "cloth";
createNode gameFbxExporter -n "gameExporterPreset2";
	rename -uid "7398745C-564A-6100-6439-12899E02778D";
	setAttr ".pn" -type "string" "アニメーションの既定値";
	setAttr ".ils" yes;
	setAttr ".eti" 2;
	setAttr ".spt" 2;
	setAttr ".ic" no;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode gameFbxExporter -n "gameExporterPreset3";
	rename -uid "54DF4CA9-1E42-3369-6BB8-EDA96D554E83";
	setAttr ".pn" -type "string" "TE アニメーションの既定値";
	setAttr ".ils" yes;
	setAttr ".eti" 3;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode animCurveTU -n "pPlane1_visibility";
	rename -uid "1C450D3C-6E4E-7BF6-8B9E-21BBDD063602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -60 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pPlane1_translateX";
	rename -uid "C77EB8F1-2641-82FE-AE30-A9BB7F5D3D92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -60 0;
createNode animCurveTL -n "pPlane1_translateY";
	rename -uid "9C783019-9646-2162-B3C7-5D94ACCE3E13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -60 1.3848840315334838;
createNode animCurveTL -n "pPlane1_translateZ";
	rename -uid "508E4135-0A4B-955E-1FBC-B4B4CB8A9598";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -60 0;
createNode animCurveTA -n "pPlane1_rotateX";
	rename -uid "D126B992-6948-5336-BDB7-DB93ED5AD89D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -60 0;
createNode animCurveTA -n "pPlane1_rotateY";
	rename -uid "866129A3-9744-B387-35C0-DE841F38C447";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -60 0;
createNode animCurveTA -n "pPlane1_rotateZ";
	rename -uid "D9350C66-4A4A-D198-1CAE-6DB394807382";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -60 0;
createNode animCurveTU -n "pPlane1_scaleX";
	rename -uid "F69C17D4-2C47-3F44-F558-5A81E9635CA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -60 2.1019627810455539;
createNode animCurveTU -n "pPlane1_scaleY";
	rename -uid "88FFB1C1-3448-8B8C-8BE2-CE901D82B599";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -60 2.1019627810455539;
createNode animCurveTU -n "pPlane1_scaleZ";
	rename -uid "D8CD2868-4A4D-3C3D-C166-1991EF40B299";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -60 2.1019627810455539;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :lambert1;
	setAttr ".c" -type "float3" 0.0156 0.0196 0.046999998 ;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr ":time1.o" "nucleus1.cti";
connectAttr "Background_nRigidShape1.cust" "nucleus1.nipo[0]";
connectAttr "Background_nRigidShape2.cust" "nucleus1.nipo[1]";
connectAttr "Background_nRigidShape3.cust" "nucleus1.nipo[2]";
connectAttr "Background_nRigidShape4.cust" "nucleus1.nipo[3]";
connectAttr "Background_nRigidShape1.stst" "nucleus1.nips[0]";
connectAttr "Background_nRigidShape2.stst" "nucleus1.nips[1]";
connectAttr "Background_nRigidShape3.stst" "nucleus1.nips[2]";
connectAttr "Background_nRigidShape4.stst" "nucleus1.nips[3]";
connectAttr "Target_nClothShape1.cust" "nucleus1.niao[0]";
connectAttr "Target_nClothShape1.stst" "nucleus1.nias[0]";
connectAttr "pPlane1_visibility.o" "Target_pPlane1.v";
connectAttr "pPlane1_translateX.o" "Target_pPlane1.tx";
connectAttr "pPlane1_translateY.o" "Target_pPlane1.ty";
connectAttr "pPlane1_translateZ.o" "Target_pPlane1.tz";
connectAttr "pPlane1_rotateX.o" "Target_pPlane1.rx";
connectAttr "pPlane1_rotateY.o" "Target_pPlane1.ry";
connectAttr "pPlane1_rotateZ.o" "Target_pPlane1.rz";
connectAttr "pPlane1_scaleX.o" "Target_pPlane1.sx";
connectAttr "pPlane1_scaleY.o" "Target_pPlane1.sy";
connectAttr "pPlane1_scaleZ.o" "Target_pPlane1.sz";
connectAttr "polyPlane1.out" "Target_pPlaneShape1.i";
connectAttr "nucleus1.stf" "Target_nClothShape1.stf";
connectAttr ":time1.o" "Target_nClothShape1.cti";
connectAttr "Target_pPlaneShape1.w" "Target_nClothShape1.imsh";
connectAttr "nucleus1.noao[0]" "Target_nClothShape1.nxst";
connectAttr "polySphere1.out" "Background_pSphereShape1.i";
connectAttr "nucleus1.stf" "Background_nRigidShape4.stf";
connectAttr ":time1.o" "Background_nRigidShape4.cti";
connectAttr "Background_pCubeShape2.w" "Background_nRigidShape4.imsh";
connectAttr "nucleus1.stf" "Background_nRigidShape3.stf";
connectAttr ":time1.o" "Background_nRigidShape3.cti";
connectAttr "Background_pCubeShape1.w" "Background_nRigidShape3.imsh";
connectAttr "polyCube1.out" "Background_pCubeShape1.i";
connectAttr "nucleus1.stf" "Background_nRigidShape1.stf";
connectAttr ":time1.o" "Background_nRigidShape1.cti";
connectAttr "Background_pSphereShape1.w" "Background_nRigidShape1.imsh";
connectAttr "polyTorus1.out" "Background_pTorusShape1.i";
connectAttr "nucleus1.stf" "Background_nRigidShape2.stf";
connectAttr ":time1.o" "Background_nRigidShape2.cti";
connectAttr "Background_pTorusShape1.w" "Background_nRigidShape2.imsh";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr ":lambert1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr ":initialShadingGroup.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "nucleus1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr ":initialParticleSE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "lambert2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr ":time1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "Background_pSphereShape1.iog" "lambert3SG.dsm" -na;
connectAttr "Background_pTorusShape1.iog" "lambert3SG.dsm" -na;
connectAttr "Background_pCubeShape1.iog" "lambert3SG.dsm" -na;
connectAttr "Background_pCubeShape2.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "Background_pTorusShape1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "Target_nClothShape1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Target_pPlane1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "polyTorus1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Background_pTorus1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Background_pCube2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Background_nRigidShape3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Background_pCubeShape2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "Background_nRigid4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "Target_nCloth1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "polySphere1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "Background_nRigidShape4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "Background_pSphere1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "Background_nRigidShape1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "Background_nRigid1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "Background_nRigidShape2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "Background_nRigid2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "Background_nRigid3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "Background_pCube1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "polyCube1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "Background_pCubeShape1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "Target_ClothTriangulate.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "lambert3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "lambert3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "Target_pPlaneShape1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "polyPlane1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "Background_pSphereShape1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Target_pPlaneShape1.iog" ":initialParticleSE.dsm" -na;
connectAttr "Target_ClothTriangulate.iog" ":initialParticleSE.dsm" -na;
// End of sample.ma
