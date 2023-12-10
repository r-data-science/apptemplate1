# {shinytest2} Testing App

    {
      "type": "list",
      "attributes": {
        "names": {
          "type": "character",
          "attributes": {},
          "value": ["input", "output", "export"]
        }
      },
      "value": [
        {
          "type": "list",
          "attributes": {
            "names": {
              "type": "character",
              "attributes": {},
              "value": ["bin_count", "btn_param_drop", "btn_param_drop_dropmenu", "dl_format"]
            }
          },
          "value": [
            {
              "type": "integer",
              "attributes": {},
              "value": [5]
            },
            {
              "type": "integer",
              "attributes": {
                "class": {
                  "type": "character",
                  "attributes": {},
                  "value": ["shinyActionButtonValue", "integer"]
                }
              },
              "value": [0]
            },
            {
              "type": "logical",
              "attributes": {},
              "value": [false]
            },
            {
              "type": "character",
              "attributes": {},
              "value": ["html"]
            }
          ]
        },
        {
          "type": "list",
          "attributes": {
            "names": {
              "type": "character",
              "attributes": {},
              "value": ["plot_1"]
            }
          },
          "value": [
            {
              "type": "list",
              "attributes": {
                "names": {
                  "type": "character",
                  "attributes": {},
                  "value": ["src", "width", "height", "alt", "coordmap"]
                }
              },
              "value": [
                {
                  "type": "character",
                  "attributes": {},
                  "value": ["data:image/png;base64,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3j27dGzfOttTUGYsz/Jkj64779KxXbanoMz45bY86d65Y9edI/rz1smNAAAAUZBnAAAAUZBnAAAAUZBnAAAAUZBnAAAAUZBnAAAAUZBnAAAAUZBnAAAAUZBnAAAAUZBnAAAAUZBnAAAAUZBnAAAAUZBnAAAAUZBnAAAAUZBnAAAAUZBnAAAAUZBnAAAAUZBnAAAAUZBnAAAAUZBnAAAAUZBnAAAAUZBnAAAAUZBnAAAAUZBnAAAAUUhlewAAIFI7ddhul47tsj1FedCudYtt6tU59dhDsz1IjFasXDn41bfT6XS2B4EoyDMAYN2u/cOZzRu2nDp1cbYH2eLlL6lQKZ17SK8jsj1IjA47dPtPPh83deacbA8CUZBnAMC6JRKJuwZ+/tBDX2Z7EMqzpT9dHhKJbE8BsfDeMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCjIMwAAgCisN8/6HLz/Pr26l1xt1LD+U4MGjH5/yEXnnp5MJjewEQAAgM2w7qY65IB9/nrT1YlE4uedksknHxhwff8BXfftUy03t+9hB65vIwAAAJtnHXl29mkndt65092DHivZ0rxZkylTZ0yYOKmwsPDuQY+edcoJ69sIAADA5kmtvenhJ55bsXLl747tU7KlaeMGo8aMy1xevGRpq5bNk8nkOjem0+lfYWgAAIDyZx2vnq1YuXKNLdVzc5f+tCxzORNgyWRynRt/wUkBAADKtXW8era2Zfn5LXObZS5n3pCWTqfXuTGEUL1icZNqhSGEbj33vuyP/UII9erUOuLAPX+B4cmCxg226b5rx0vP+V22B6Fs1KtT6/ADLM9yomH9uvvv2fWck4/K9iCUjRiWZ63qtV565t3szkC5VyGVeuupuwoKC7M9yCbwy215sk3dWsXFoc9Be2Xl0e9/4qUBg55efUup8mzqtJknHv3zuY61a9WcMm1GOp1e58YQwvLCxLSlOSGElV98P+Him0IIZ5901L2PPV+G3wZZdMsV5340csxrb3+U7UEoG+ecfNQ/H7U8y4lrLzzt24lTnnvtnWwPQtmIYXnedOn52R2ArUFhUdFlN981Z96CbA+yCfxyW56ce8rRRen0fY+9kJVHnzVn/hpbSpVnM2bN6dihXauWzadMm3HGKcc/8MjT69sYQihMh8J0MoQwecbcyTPmhhAOP2DPT0d/VZbfB9mzcPHSH6bO9AMtN4440PIsP+YvXDJlxmw/0HIjhuW55D/vYoBfTnFx8RdffTd1xuxsD7IJ/HJbnvT9zd6FhUXx/EBL9W6xdDp9wun9+l9/+ZfDXwshPPvy0PVtBAAAYPOs99Wzxwe/tPrV6TNnH3PqeWvss86NAAAAbAaftQgAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABAFeQYAABCFVLYHgPKpYoUKyWQi21NsXConp3Klitmegs20qqAwnU5newoAoMzIMyh7LZo2mvDBszk5W8ar0xeecUK2R2Az3f3Q8xde/7dsTwEAlBl5BmWverWqc+f91Kb1P7I9COXZ+ed33al7jWxPAQCUJXkGv4ji4uLlywuzPQXl2apVRSHkZHsKAKAsbRknXwEAAJR78gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8oK8Vq8AABFaSURBVAwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAK8gwAACAKpc2z4/oeOn7EsMx/9/ztxszGRg3rPzVowOj3h1x07unJpNIDAADYfKlS7rfLjh3273vS9JmzS7Ykk8knHxhw9h+v/mHytCsvOrfvYQc+//Lrv8yQAAAA5V9pX/LqvHOnOfN+XH1L82ZNpkydMWHipMLCwrsHPXrWKSf8AuMBAABsLUqVZzk5ycaNGlx3+QVjPhx6+41XVcvNDSE0bdxg1JhxmR0WL1naqmVz5zcCAABstlKd3Fi3dq1Fi5cOvPeh6269o8+hBz4w4JYT/ucP1XNzl/60LLNDOp0OISSTyXQ6nUoWV84pDiE0adq0SePGIYQWTRv27tnlF/sW+FVtU7fW9tu19APdsG2bNc7xrxX88urXrb36Ymy4TZ22rZpbnuVG8ybZ/9uzds0aIczP7gyUe4lEYvcunVq3aJLtQTaBX27Lk+aNGxali7L1A50yY/akqTNX31KqPJv348JeBx2dufzCK29cd9kFuVWrLMvPb5nbLLMxkUiE/0Ra5ZzixtWKQghdd9j2gnPPCCE0blCvbavmZfddkE3bNm/ctHEDfyRtWOXKlSpUKO0bO2GzdWzfuv/V55dcbdGkYfs2LXp07pTFkShDMfzt2aBe/RB+yO4MlHs5yeQV552yqqAg24NsghiWJ2WlcYNtikNxu9YtsvLoDz0z5J5Hnlt9yyb/BplIJBKJREFB4dRpM088uk9mY+1aNadMm5HJs2UFye8WJUMI3w356LEhH4UQbrni3Ktuu6cMxicCz91/25BhHz48eEi2B4lax/athzx0V7anoPx756PPT73oupKrD9953edjvvnHQ89mcSTK0K1XnnvlrVn+2/P5+/+a3QHYGhQWFR3++0umzpi98V2j4Zfb8qT/1ecXFhZd3f+f2R7kZ6U6/6ptm22fenBglcqVk8nksX0OGfbeR6sKCmbMmtOxQ7vMW87OOOX4Bx55+peeFQAAoBwrVZ599/3kwS8MefXpQV8Of22H9m0uv+62EEI6nT7h9H79r7/8y+GvhRCefXnoLzspAABAuVbakxtffO3NF197c42N02fOPubU88p6JAAAgK2RD5cDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIgjwDAACIQirbAwCwOSpUyKlXp2a3XXYo2VKvTq0WTRutvoUtWqMG9bL+06xRvVoI87M7A8BWRZ4BbJG6dWuyR9ft/nX7zSVbKleq2LbFdgfv1TuLU1GGKlassFvHXbM7Q4P6NR4Nk7M7A8BWRZ4BbJFychJDhkw47rjnsz0I5dmkSRdkewSArYv3ngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERBngEAAERB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"]
                },
                {
                  "type": "integer",
                  "attributes": {},
                  "value": [1162]
                },
                {
                  "type": "integer",
                  "attributes": {},
                  "value": [675]
                },
                {
                  "type": "character",
                  "attributes": {},
                  "value": ["Plot object"]
                },
                {
                  "type": "list",
                  "attributes": {
                    "names": {
                      "type": "character",
                      "attributes": {},
                      "value": ["panels", "dims"]
                    }
                  },
                  "value": [
                    {
                      "type": "list",
                      "attributes": {},
                      "value": [
                        {
                          "type": "list",
                          "attributes": {
                            "names": {
                              "type": "character",
                              "attributes": {},
                              "value": ["panel", "row", "col", "panel_vars", "log", "domain", "mapping", "range"]
                            }
                          },
                          "value": [
                            {
                              "type": "double",
                              "attributes": {},
                              "value": [1]
                            },
                            {
                              "type": "double",
                              "attributes": {},
                              "value": [1]
                            },
                            {
                              "type": "double",
                              "attributes": {},
                              "value": [1]
                            },
                            {
                              "type": "list",
                              "attributes": {
                                "names": {
                                  "type": "character",
                                  "attributes": {},
                                  "value": []
                                }
                              },
                              "value": []
                            },
                            {
                              "type": "list",
                              "attributes": {
                                "names": {
                                  "type": "character",
                                  "attributes": {},
                                  "value": ["x", "y"]
                                }
                              },
                              "value": [
                                {
                                  "type": "NULL"
                                },
                                {
                                  "type": "NULL"
                                }
                              ]
                            },
                            {
                              "type": "list",
                              "attributes": {
                                "names": {
                                  "type": "character",
                                  "attributes": {},
                                  "value": ["left", "right", "bottom", "top"]
                                }
                              },
                              "value": [
                                {
                                  "type": "double",
                                  "attributes": {},
                                  "value": [29.8125]
                                },
                                {
                                  "type": "double",
                                  "attributes": {},
                                  "value": [102.6875]
                                },
                                {
                                  "type": "double",
                                  "attributes": {},
                                  "value": [-6.8]
                                },
                                {
                                  "type": "double",
                                  "attributes": {},
                                  "value": [142.8]
                                }
                              ]
                            },
                            {
                              "type": "list",
                              "attributes": {
                                "names": {
                                  "type": "character",
                                  "attributes": {},
                                  "value": ["y", "x"]
                                }
                              },
                              "value": [
                                {
                                  "type": "NULL"
                                },
                                {
                                  "type": "character",
                                  "attributes": {},
                                  "value": ["waiting"]
                                }
                              ]
                            },
                            {
                              "type": "list",
                              "attributes": {
                                "names": {
                                  "type": "character",
                                  "attributes": {},
                                  "value": ["left", "right", "bottom", "top"]
                                }
                              },
                              "value": [
                                {
                                  "type": "double",
                                  "attributes": {},
                                  "value": [30.4265839]
                                },
                                {
                                  "type": "double",
                                  "attributes": {},
                                  "value": [1156.52054795]
                                },
                                {
                                  "type": "double",
                                  "attributes": {},
                                  "value": [653.5890411]
                                },
                                {
                                  "type": "double",
                                  "attributes": {},
                                  "value": [65.41380251]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    },
                    {
                      "type": "list",
                      "attributes": {
                        "names": {
                          "type": "character",
                          "attributes": {},
                          "value": ["width", "height"]
                        }
                      },
                      "value": [
                        {
                          "type": "integer",
                          "attributes": {},
                          "value": [1162]
                        },
                        {
                          "type": "integer",
                          "attributes": {},
                          "value": [675]
                        }
                      ]
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "type": "list",
          "attributes": {
            "names": {
              "type": "character",
              "attributes": {},
              "value": []
            }
          },
          "value": []
        }
      ]
    }

---

    "my-report.html"

