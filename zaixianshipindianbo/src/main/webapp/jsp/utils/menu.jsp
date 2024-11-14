<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

var menus = [

	{
        "backMenu":[
			{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"用户管理",
			            "menuJump":"列表",
			            "tableName":"yonghu"
			        }
			    ],
			    "menu":"用户管理"
			},
            {
                "child":[
                    {
                        "buttons":[
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员信息"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"视频管理",
                        "menuJump":"列表",
                        "tableName":"dianying"
                    },
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"视频收藏管理",
                        "menuJump":"列表",
                        "tableName":"dianyingCollection"
                    }
					,
					{
					    "buttons":[
					        "查看",
					        "新增",
					        "修改",
					        "删除"
					    ],
					    "menu":"视频评论管理",
					    "menuJump":"列表",
					    "tableName":"dianyingCommentback"
					}
                ],
                "menu":"视频管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"投票管理",
                        "menuJump":"列表",
                        "tableName":"voting"
                    }
                ],
                "menu":"投票管理"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"视频类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryLeix"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"动态类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryNews"
			        }
			
			    ],
			    "menu":"基础数据管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "删除"
			            ],
			            "menu":"论坛管理",
			            "menuJump":"列表",
			            "tableName":"forum"
			        }
			    ],
			    "menu":"论坛管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"轮播图管理",
			            "menuJump":"列表",
			            "tableName":"config"
			        }
			    ],
			    "menu":"轮播图管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"视频动态管理",
			            "menuJump":"列表",
			            "tableName":"news"
			        }
			    ],
			    "menu":"视频动态管理"
			}
        ],
        "frontMenu":[

        ],
        "roleName":"管理员",
        "tableName":"users"
    }
	,
	{
	    "backMenu":[
	        {
	            "child":[
	                {
	                    "buttons":[
	                        "查看"
	                    ],
	                    "menu":"视频管理",
	                    "menuJump":"列表",
	                    "tableName":"dianying"
	                },
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"视频收藏管理",
                        "menuJump":"列表",
                        "tableName":"dianyingCollection"
                    },
					{
					    "buttons":[
					        "查看",
					        "删除"
					    ],
					    "menu":"视频评论管理",
					    "menuJump":"列表",
					    "tableName":"dianyingCommentback"
					}
	            ],
	            "menu":"视频管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看"
	                    ],
	                    "menu":"视频动态管理",
	                    "menuJump":"列表",
	                    "tableName":"news"
	                }
	            ],
	            "menu":"视频动态管理"
	        }
	    ],
	    "frontMenu":[
	
	    ],
	    "roleName":"用户",
	    "tableName":"yonghu"
	}
];

var hasMessage = '';
