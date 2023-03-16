{
	"contents": {
		"2d5d4f3c-5984-411f-ae9b-461edc005812": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "approvebookorder",
			"subject": "ApproveBookOrder",
			"name": "ApproveBookOrder",
			"documentation": "Approve Book Order",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Start Approval Process"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "Approved"
				},
				"d153365b-42fb-4ca0-9983-081706afb17b": {
					"name": "Rejected"
				}
			},
			"activities": {
				"9dafbcc6-2d5c-4e25-90f1-4b3b32f3eb1d": {
					"name": "Init History"
				},
				"bbc39a58-de7a-472a-b172-1d2cf8688a9e": {
					"name": "Approval Needed?"
				},
				"6ffd42e8-9e2b-4857-bb2f-0ac08c488022": {
					"name": "Approve by Department Manager"
				},
				"0738ed00-d308-4f61-ba6e-9db8672ee2a8": {
					"name": "Process Department Manager Decision"
				},
				"f53f208b-716a-4b22-afb7-36e109334e69": {
					"name": "Department Manager Approval Decision"
				},
				"406873f5-9337-4499-ab08-f2375c1fd751": {
					"name": "Approve by Purchasing Manager"
				},
				"f270eceb-a009-431a-9801-d2dee5680a98": {
					"name": "Process Purchasing Manager Decision"
				},
				"d436a305-0504-4557-a39d-4e6e38c38bcf": {
					"name": "Purchasing Manager Approval Decision"
				},
				"bb21de5d-6753-491c-9b3f-5a88c52bdde5": {
					"name": "Approve by Financial Audit Manager"
				},
				"f281eadd-73ce-4a32-8bc2-4906f9df59d3": {
					"name": "Process Purchasing Manager Decision"
				},
				"0a17e927-4a80-46f9-add6-7f6fbad66e46": {
					"name": "Financial Audit Manager Approval Decision"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"3dc36b3e-089d-4bd4-9cbe-f343708559c0": {
					"name": "SequenceFlow2"
				},
				"2b3e5bd7-a13b-4eb6-a87d-454274a91abf": {
					"name": "Yes"
				},
				"2b035246-d923-4433-9275-e5ba3aa9890b": {
					"name": "SequenceFlow4"
				},
				"ce50455f-a2b7-4ab5-aef3-576ee2079264": {
					"name": "SequenceFlow6"
				},
				"4edf48a8-fc43-4e69-99af-8000e803db9c": {
					"name": "Approved"
				},
				"547bc1a6-58e7-4cb7-9afd-a1e7dbef37c1": {
					"name": "Rejected"
				},
				"652aa6df-964b-45a6-a569-afce73ab13d0": {
					"name": "SequenceFlow10"
				},
				"c4be4c1e-a898-4f34-9d28-24e042da3019": {
					"name": "SequenceFlow11"
				},
				"849367cc-de24-4aff-892e-9e37d1dab9f6": {
					"name": "Approved"
				},
				"c45979a1-f2b9-4dab-98c8-eb7c541fda70": {
					"name": "Rejected"
				},
				"830bb4c7-24c3-4c61-8aef-6340517600e6": {
					"name": "No"
				},
				"14bda983-e4c3-4fe1-b056-0adcc2923c35": {
					"name": "SequenceFlow15"
				},
				"eddd3f1b-dfcc-4012-92f3-63746261ea88": {
					"name": "SequenceFlow16"
				},
				"0fd34fcb-7918-4d2f-b857-351cdae0b781": {
					"name": "Approved"
				},
				"e427c5a4-3db2-429a-a001-1745f5cc9fab": {
					"name": "Rejected"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Start Approval Process",
			"sampleContextRefs": {
				"9177c13e-5f2f-4d77-bfb8-45a2076ab7b8": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "Approved"
		},
		"d153365b-42fb-4ca0-9983-081706afb17b": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "Rejected",
			"eventDefinitions": {
				"03b3e08f-9d71-4b25-a2f4-13b283bd784c": {}
			}
		},
		"9dafbcc6-2d5c-4e25-90f1-4b3b32f3eb1d": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ApproveBookOrder/ScriptOperations.js",
			"id": "scripttask1",
			"name": "Init History"
		},
		"bbc39a58-de7a-472a-b172-1d2cf8688a9e": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Approval Needed?",
			"default": "830bb4c7-24c3-4c61-8aef-6340517600e6"
		},
		"6ffd42e8-9e2b-4857-bb2f-0ac08c488022": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for \"${context.WorkflowDetails.title}\" in your role as ${context.WorkflowDetails.currentRole}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy} ",
			"formReference": "/forms/ApproveBookOrder/ApproveBookOrder.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvebookorder"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Approve by Department Manager"
		},
		"0738ed00-d308-4f61-ba6e-9db8672ee2a8": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ApproveBookOrder/ScriptOperations.js",
			"id": "scripttask2",
			"name": "Process Department Manager Decision"
		},
		"f53f208b-716a-4b22-afb7-36e109334e69": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Department Manager Approval Decision",
			"default": "547bc1a6-58e7-4cb7-9afd-a1e7dbef37c1"
		},
		"406873f5-9337-4499-ab08-f2375c1fd751": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for \"${context.WorkflowDetails.title}\" in your role as ${context.WorkflowDetails.currentRole}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy} ",
			"formReference": "/forms/ApproveBookOrder/ApproveBookOrder.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvebookorder"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask3",
			"name": "Approve by Purchasing Manager"
		},
		"f270eceb-a009-431a-9801-d2dee5680a98": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ApproveBookOrder/ScriptOperations.js",
			"id": "scripttask3",
			"name": "Process Purchasing Manager Decision"
		},
		"d436a305-0504-4557-a39d-4e6e38c38bcf": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "Purchasing Manager Approval Decision",
			"default": "c45979a1-f2b9-4dab-98c8-eb7c541fda70"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "9dafbcc6-2d5c-4e25-90f1-4b3b32f3eb1d"
		},
		"3dc36b3e-089d-4bd4-9cbe-f343708559c0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "9dafbcc6-2d5c-4e25-90f1-4b3b32f3eb1d",
			"targetRef": "bbc39a58-de7a-472a-b172-1d2cf8688a9e"
		},
		"2b3e5bd7-a13b-4eb6-a87d-454274a91abf": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.BookOrder.totalPrice>= 1000}",
			"id": "sequenceflow3",
			"name": "Yes",
			"sourceRef": "bbc39a58-de7a-472a-b172-1d2cf8688a9e",
			"targetRef": "6ffd42e8-9e2b-4857-bb2f-0ac08c488022"
		},
		"2b035246-d923-4433-9275-e5ba3aa9890b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "6ffd42e8-9e2b-4857-bb2f-0ac08c488022",
			"targetRef": "0738ed00-d308-4f61-ba6e-9db8672ee2a8"
		},
		"ce50455f-a2b7-4ab5-aef3-576ee2079264": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "0738ed00-d308-4f61-ba6e-9db8672ee2a8",
			"targetRef": "f53f208b-716a-4b22-afb7-36e109334e69"
		},
		"4edf48a8-fc43-4e69-99af-8000e803db9c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision == \"approve\"}",
			"id": "sequenceflow7",
			"name": "Approved",
			"sourceRef": "f53f208b-716a-4b22-afb7-36e109334e69",
			"targetRef": "406873f5-9337-4499-ab08-f2375c1fd751"
		},
		"547bc1a6-58e7-4cb7-9afd-a1e7dbef37c1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "Rejected",
			"sourceRef": "f53f208b-716a-4b22-afb7-36e109334e69",
			"targetRef": "d153365b-42fb-4ca0-9983-081706afb17b"
		},
		"652aa6df-964b-45a6-a569-afce73ab13d0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "406873f5-9337-4499-ab08-f2375c1fd751",
			"targetRef": "f270eceb-a009-431a-9801-d2dee5680a98"
		},
		"c4be4c1e-a898-4f34-9d28-24e042da3019": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "f270eceb-a009-431a-9801-d2dee5680a98",
			"targetRef": "d436a305-0504-4557-a39d-4e6e38c38bcf"
		},
		"849367cc-de24-4aff-892e-9e37d1dab9f6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask3.last.decision == \"approve\"}",
			"id": "sequenceflow12",
			"name": "Approved",
			"sourceRef": "d436a305-0504-4557-a39d-4e6e38c38bcf",
			"targetRef": "bb21de5d-6753-491c-9b3f-5a88c52bdde5"
		},
		"c45979a1-f2b9-4dab-98c8-eb7c541fda70": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "Rejected",
			"sourceRef": "d436a305-0504-4557-a39d-4e6e38c38bcf",
			"targetRef": "d153365b-42fb-4ca0-9983-081706afb17b"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"ba1cf967-5a0a-4fee-b1ca-ab59c67d90f8": {},
				"c1aa5057-813a-455f-a09b-fec31b47c1cb": {},
				"613a9a50-ebdd-4e7f-84ea-0bd11d0c304b": {},
				"ef00cbfa-f399-4c4a-9aec-2fd7409496bf": {},
				"9cf3f83b-4e16-453c-b816-79c531903551": {},
				"af736b62-c014-44f8-b908-7ee9ae961115": {},
				"135b086b-7fdd-4ba3-953e-f25c954587a8": {},
				"14e13232-0ed1-45c8-b4d1-759bb60bdfc7": {},
				"8c776348-da0a-4532-9bdf-e8443c191ad8": {},
				"65418e92-d36d-44a3-8e81-00e58ab2b5b1": {},
				"40099fa2-acf5-4141-8cf7-7daf378e8070": {},
				"991a9b92-f098-4982-8d30-4789f52a019a": {},
				"c0d11da0-b5b9-4e70-9f1b-1dffefde755c": {},
				"be756cc3-f3dd-4a36-be61-9f6f3a403698": {},
				"5c4bbfdd-e343-42b7-b38f-b0ee03829e37": {},
				"73f8a929-d3ff-4ce8-af11-aaef9d272f2e": {},
				"7195b711-5549-4cd5-bd06-18d4342bbde0": {},
				"086f6848-3170-4274-acae-c66ea1fbcbde": {},
				"753908d8-495f-486a-bc72-d255467dc944": {},
				"3b1f2565-c6ec-45d2-b233-0504706dc07b": {},
				"902c62ad-2c7e-4189-b39d-27035b1cb3f0": {},
				"7cbb3031-51f1-4734-88c3-4b9506e03eb6": {},
				"76c0bb6b-4cee-4b54-9ad5-4142fac0a97f": {},
				"d7de9846-012b-4b8d-8355-f340deed8d34": {},
				"fffcd89b-a1c6-435b-9eac-dc9829ec836a": {},
				"62c80d9a-2a89-48a9-9360-f626bb0c43cf": {},
				"50fdb06d-6361-4a4a-ac09-d599548859ef": {}
			}
		},
		"9177c13e-5f2f-4d77-bfb8-45a2076ab7b8": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/ApproveBookOrder/SampleStartPayload.json",
			"id": "default-start-context"
		},
		"03b3e08f-9d71-4b25-a2f4-13b283bd784c": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 56,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1682.999998807907,
			"y": 54,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,72 94,72",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "ba1cf967-5a0a-4fee-b1ca-ab59c67d90f8",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"ba1cf967-5a0a-4fee-b1ca-ab59c67d90f8": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 94,
			"y": 42,
			"width": 100,
			"height": 60,
			"object": "9dafbcc6-2d5c-4e25-90f1-4b3b32f3eb1d"
		},
		"c1aa5057-813a-455f-a09b-fec31b47c1cb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,72 244,72",
			"sourceSymbol": "ba1cf967-5a0a-4fee-b1ca-ab59c67d90f8",
			"targetSymbol": "613a9a50-ebdd-4e7f-84ea-0bd11d0c304b",
			"object": "3dc36b3e-089d-4bd4-9cbe-f343708559c0"
		},
		"613a9a50-ebdd-4e7f-84ea-0bd11d0c304b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 244,
			"y": 51,
			"object": "bbc39a58-de7a-472a-b172-1d2cf8688a9e"
		},
		"ef00cbfa-f399-4c4a-9aec-2fd7409496bf": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "286,72 336,72",
			"sourceSymbol": "613a9a50-ebdd-4e7f-84ea-0bd11d0c304b",
			"targetSymbol": "9cf3f83b-4e16-453c-b816-79c531903551",
			"object": "2b3e5bd7-a13b-4eb6-a87d-454274a91abf"
		},
		"9cf3f83b-4e16-453c-b816-79c531903551": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 336,
			"y": 42,
			"width": 100,
			"height": 60,
			"object": "6ffd42e8-9e2b-4857-bb2f-0ac08c488022"
		},
		"af736b62-c014-44f8-b908-7ee9ae961115": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "436,72 486,72",
			"sourceSymbol": "9cf3f83b-4e16-453c-b816-79c531903551",
			"targetSymbol": "135b086b-7fdd-4ba3-953e-f25c954587a8",
			"object": "2b035246-d923-4433-9275-e5ba3aa9890b"
		},
		"135b086b-7fdd-4ba3-953e-f25c954587a8": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 486,
			"y": 42,
			"width": 100,
			"height": 60,
			"object": "0738ed00-d308-4f61-ba6e-9db8672ee2a8"
		},
		"14e13232-0ed1-45c8-b4d1-759bb60bdfc7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "586,72 636,72",
			"sourceSymbol": "135b086b-7fdd-4ba3-953e-f25c954587a8",
			"targetSymbol": "8c776348-da0a-4532-9bdf-e8443c191ad8",
			"object": "ce50455f-a2b7-4ab5-aef3-576ee2079264"
		},
		"8c776348-da0a-4532-9bdf-e8443c191ad8": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 636,
			"y": 51,
			"object": "f53f208b-716a-4b22-afb7-36e109334e69"
		},
		"65418e92-d36d-44a3-8e81-00e58ab2b5b1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "678,72 799.5,72",
			"sourceSymbol": "8c776348-da0a-4532-9bdf-e8443c191ad8",
			"targetSymbol": "c0d11da0-b5b9-4e70-9f1b-1dffefde755c",
			"object": "4edf48a8-fc43-4e69-99af-8000e803db9c"
		},
		"40099fa2-acf5-4141-8cf7-7daf378e8070": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1524.999998807907,
			"y": 232,
			"width": 35,
			"height": 35,
			"object": "d153365b-42fb-4ca0-9983-081706afb17b"
		},
		"991a9b92-f098-4982-8d30-4789f52a019a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "657,72 657,317 1544,317 1543.999998807907,254.5",
			"sourceSymbol": "8c776348-da0a-4532-9bdf-e8443c191ad8",
			"targetSymbol": "40099fa2-acf5-4141-8cf7-7daf378e8070",
			"object": "547bc1a6-58e7-4cb7-9afd-a1e7dbef37c1"
		},
		"c0d11da0-b5b9-4e70-9f1b-1dffefde755c": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 799,
			"y": 42,
			"width": 100,
			"height": 60,
			"object": "406873f5-9337-4499-ab08-f2375c1fd751"
		},
		"be756cc3-f3dd-4a36-be61-9f6f3a403698": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 949,
			"y": 42,
			"width": 100,
			"height": 60,
			"object": "f270eceb-a009-431a-9801-d2dee5680a98"
		},
		"5c4bbfdd-e343-42b7-b38f-b0ee03829e37": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "849,72 999,72",
			"sourceSymbol": "c0d11da0-b5b9-4e70-9f1b-1dffefde755c",
			"targetSymbol": "be756cc3-f3dd-4a36-be61-9f6f3a403698",
			"object": "652aa6df-964b-45a6-a569-afce73ab13d0"
		},
		"73f8a929-d3ff-4ce8-af11-aaef9d272f2e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1095.5,
			"y": 51,
			"object": "d436a305-0504-4557-a39d-4e6e38c38bcf"
		},
		"7195b711-5549-4cd5-bd06-18d4342bbde0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "999,72 1116.5,72",
			"sourceSymbol": "be756cc3-f3dd-4a36-be61-9f6f3a403698",
			"targetSymbol": "73f8a929-d3ff-4ce8-af11-aaef9d272f2e",
			"object": "c4be4c1e-a898-4f34-9d28-24e042da3019"
		},
		"086f6848-3170-4274-acae-c66ea1fbcbde": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1116.5,72 1198.5,72",
			"sourceSymbol": "73f8a929-d3ff-4ce8-af11-aaef9d272f2e",
			"targetSymbol": "3b1f2565-c6ec-45d2-b233-0504706dc07b",
			"object": "849367cc-de24-4aff-892e-9e37d1dab9f6"
		},
		"753908d8-495f-486a-bc72-d255467dc944": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1118.0000011863892,89.99999892768679 1118,249.5 1525.499998807907,249.5",
			"sourceSymbol": "73f8a929-d3ff-4ce8-af11-aaef9d272f2e",
			"targetSymbol": "40099fa2-acf5-4141-8cf7-7daf378e8070",
			"object": "c45979a1-f2b9-4dab-98c8-eb7c541fda70"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 1,
			"sequenceflow": 18,
			"startevent": 1,
			"endevent": 2,
			"usertask": 4,
			"scripttask": 4,
			"exclusivegateway": 4
		},
		"bb21de5d-6753-491c-9b3f-5a88c52bdde5": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for \"${context.WorkflowDetails.title}\" in your role as ${context.WorkflowDetails.currentRole} ",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy} ",
			"formReference": "/forms/ApproveBookOrder/ApproveBookOrder.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvebookorder"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask4",
			"name": "Approve by Financial Audit Manager"
		},
		"3b1f2565-c6ec-45d2-b233-0504706dc07b": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 1198,
			"y": 42,
			"width": 100,
			"height": 60,
			"object": "bb21de5d-6753-491c-9b3f-5a88c52bdde5"
		},
		"830bb4c7-24c3-4c61-8aef-6340517600e6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "No",
			"sourceRef": "bbc39a58-de7a-472a-b172-1d2cf8688a9e",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"902c62ad-2c7e-4189-b39d-27035b1cb3f0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "265,72 265,-22 1700.5,-22 1700.499998807907,54.5",
			"sourceSymbol": "613a9a50-ebdd-4e7f-84ea-0bd11d0c304b",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "830bb4c7-24c3-4c61-8aef-6340517600e6"
		},
		"f281eadd-73ce-4a32-8bc2-4906f9df59d3": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ApproveBookOrder/ScriptOperations.js",
			"id": "scripttask4",
			"name": "Process Purchasing Manager Decision"
		},
		"7cbb3031-51f1-4734-88c3-4b9506e03eb6": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1374,
			"y": 42,
			"width": 100,
			"height": 60,
			"object": "f281eadd-73ce-4a32-8bc2-4906f9df59d3"
		},
		"14bda983-e4c3-4fe1-b056-0adcc2923c35": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "bb21de5d-6753-491c-9b3f-5a88c52bdde5",
			"targetRef": "f281eadd-73ce-4a32-8bc2-4906f9df59d3"
		},
		"76c0bb6b-4cee-4b54-9ad5-4142fac0a97f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1248,72 1424,72",
			"sourceSymbol": "3b1f2565-c6ec-45d2-b233-0504706dc07b",
			"targetSymbol": "7cbb3031-51f1-4734-88c3-4b9506e03eb6",
			"object": "14bda983-e4c3-4fe1-b056-0adcc2923c35"
		},
		"0a17e927-4a80-46f9-add6-7f6fbad66e46": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway4",
			"name": "Financial Audit Manager Approval Decision",
			"default": "e427c5a4-3db2-429a-a001-1745f5cc9fab"
		},
		"d7de9846-012b-4b8d-8355-f340deed8d34": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1520.5,
			"y": 51,
			"object": "0a17e927-4a80-46f9-add6-7f6fbad66e46"
		},
		"eddd3f1b-dfcc-4012-92f3-63746261ea88": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "f281eadd-73ce-4a32-8bc2-4906f9df59d3",
			"targetRef": "0a17e927-4a80-46f9-add6-7f6fbad66e46"
		},
		"fffcd89b-a1c6-435b-9eac-dc9829ec836a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1424,72 1541.5,72",
			"sourceSymbol": "7cbb3031-51f1-4734-88c3-4b9506e03eb6",
			"targetSymbol": "d7de9846-012b-4b8d-8355-f340deed8d34",
			"object": "eddd3f1b-dfcc-4012-92f3-63746261ea88"
		},
		"0fd34fcb-7918-4d2f-b857-351cdae0b781": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask4.last.decision == \"approve\"}",
			"id": "sequenceflow17",
			"name": "Approved",
			"sourceRef": "0a17e927-4a80-46f9-add6-7f6fbad66e46",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"62c80d9a-2a89-48a9-9360-f626bb0c43cf": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1541.5,72 1691,72",
			"sourceSymbol": "d7de9846-012b-4b8d-8355-f340deed8d34",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "0fd34fcb-7918-4d2f-b857-351cdae0b781"
		},
		"e427c5a4-3db2-429a-a001-1745f5cc9fab": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "Rejected",
			"sourceRef": "0a17e927-4a80-46f9-add6-7f6fbad66e46",
			"targetRef": "d153365b-42fb-4ca0-9983-081706afb17b"
		},
		"50fdb06d-6361-4a4a-ac09-d599548859ef": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1541.9999994039536,72 1541.9999994039536,232.5",
			"sourceSymbol": "d7de9846-012b-4b8d-8355-f340deed8d34",
			"targetSymbol": "40099fa2-acf5-4141-8cf7-7daf378e8070",
			"object": "e427c5a4-3db2-429a-a001-1745f5cc9fab"
		}
	}
}