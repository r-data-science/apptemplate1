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
                  "value": ["data:image/png;base64,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3HqvbA8So86dN0+nKwffMzzbg0AsBBsAUFNnDXxp8uS52Z6CddmDww7J9ggQF+9hAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiJRgAwAAiFQ1wXb+2adOGDNywpiRxx992H9tmkwO7N/33VeeemH40I7bt1/hOgAAAKsj9cula2649Zobbj3+6MOSycSS6yf27rXZpht36tGrcaOip4cNOeCoftNnzFzOOgAAAKtjmadEptPppVYGnNznrzffUVpWNnX6jFvveqBnj67LXwcAAGB11PQ9bAV16xY2bPDDrNmZL8eN/2yn7dsvZx0AAIDVVNNgy8/PS6fTVS+7zZ9fUlTYcDnrAAAArKZq3sNWrdLS0mQymUwmM21Wr17BnLnzlrMeQshJhJxkZQihUXFx3YKC/Nzc4sIGWzRv8qs8Dta4DRsX162bb4euM5o12XiDRkV26DqjUXFh/foFdug6o8nGGzRsUC/rOzSRWPE2sJoSiUTjRoVZ/2lfKRttULxw0eLZP/8OzNqufkHdDYqz9kM4Z+78WbPnLrlS02ArWbBw7rz5jYuLZsycFUJo17bV+x+OW856CKEwP92kfnkI4eBe3c8543eJkMjPyz3u8P1q8fGQRbm5qbxU7rvPDc32INSOZDKZysn5Q//e2R6E2pGfl5tMJrt33jnbg1A7Ujk5iUSirLw8u2Pkpmr6awOssjr5eX887bizTjoq24OshNxUKp2urEhXZHsQakdB3Tp7ddrpnN8dk5V7v/72YVcMunvJlUSq+W7VbnrckYekUjlDH3ysaqX/ib2bb9bkkquuL2rY8LlH7z649ylTp89YzvpS8vNyLzjjhMuuG1Krj4isOfrgvfsc3nP/48/J9iDUji2aN+neeZc7Hngy24NQO8455ZhtW2158h+vyPYg1I5OO29XXNjgmZGvZ3eM2eNf3abN4MmT5654U1hVDw475O1PXh58z/BsD7ISjjig2xcTv/3w40+zPQi144GbLx/9zke33fd4tgf5STXvYdu/R9cJY0ZeesHZfz73zAljRh68396Z9SH3PjR79tz3Xn364btvPvO8S6uqbFnrAAAArI5qzm149sVXnn3xlV+uV1Skr73p9mtvur2G6wAAAKyOmn5KJAAAAGuYYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIhUKtsDwDpu1x22PbjHntmeYsUKG9ZvsdmmWzRrku1BWEVjx3/+0FMjsj0FAFDLBBv8uo4+uMeOrXd9/fVJ2R5kBWbPCx9NKQ9hi2wPwqpo0aJon9/9VrABwLpHsMGvbsSIry69dFS2p2Bd1q3bFn+7YfdsTwEA1D7vYQMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIiUYAMAAIjUSgTbn/9wxoQxIzP/vfb8o/+5iWRyYP++777y1AvDh4GFMc4AABFsSURBVHbcvv2vMCQAAMD6KFXzTZM5yaNPGvjRuE+WWj+xd6/NNt24U49ejRsVPT1syAFH9Zs+Y2atDgkAALA+WrlTItPp9C8XB5zc568331FaVjZ1+oxb73qgZ4+utTQbAADAem3lgu3W668c+8bz9/z9b61bbZVZKahbt7Bhgx9mzc58OW78Zzs5KxIAAKA2rMQpkZf/ZdDlfxmUTCY7bNvm8Xv/vsd+R878cXZ+fl46na565W3+/JKiwoa/zqgAAADrl5UItox0Ov3RuE8efOSpPTvt+vgzL5aWliaTyWQymWm2evUK5sydl9myOL9ik3oVIYQDDz3y1JNPSCQSDevXO+GI/Wv3AZAtBXXr1Cuo+9VbT2R7kNg1qFf/xhvey/YUrPuaN91kyeOxQf2C3FSq6+47ZXEkalF+Xl4ymVi4aHF2x8jLXelfG2Bl1a2Tf+kfTjn31GOzPchKKKhbp7y8orSsLNuDUDsaFxfuvccu5w/ok5V7H3zPY3+99f4lV1bxT950qEzkJEMIJQsWzp03v3Fx0YyZs0II7dq2ev/DcZlt5pXlLJyTCCE88sJbL7z5cV5ubr+jD7z1vsdX6xEQjX277HbA3ruf8adrsz1I7M7t3yeEvGxPwbpv2oyZxw38U9WXxx2+31abN73suiFZHIlatH271g3rF4x++8PsjvHaE36i+NUtLi2944EnH356RLYHWQn77LHrpO+mT/hiYrYHoXZcdeHp74+bMPyZl7Ny7zNm/rjUSk2DLZXKOezA/Z545sXy8vLWLbfs3eugbgf1znzrtqEPnj2g3yVXXV/UsOFpJx57cO9TMuvl6VAekiGEiVOmhynT8/Nyp/8wa+z4L2rpsZBlbVttMW/+Ajt0hWbOnhPChtmegnVfaWnZksfj1Ok/NCps6AhdZzSoX6+4sEHWd2hlZWV2B2B9kE5XTpk2I+s/7Sul9VabfzHx27VrZpZj9tx5Uf0Q1jTYyssrvpn07ZP33dqiRbP3Phx3dL+B3/8wK/OtIfc+9PsBJ7/36tMzZ80+87xLp06f8atNCwAAsB5ZiVMi33n/o/2PPumX6xUV6Wtvuv3am26vvakAAABYyY/1BwAAYI0RbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJFKZXsAAFbXllsWt27ZbMbYEVUrqVQqmUgc3KNL9oaiNiWTyUQiUVFRkd0x8nL92gCwpvmTF2CtV1hYZ9q0km7d7s32IKzjJkw4I9sjAKx3BBvAuqCsrOKrr37M9hQAQC3zHjYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBICTYAAIBIpbI9AAAA/KTtNhvtt9+pfxp4UrYHWQm5qVQ6na5Ip7M9CCvhsWdfGXjxtdmeokYEGwAAsahbkHvLze8/8MDYbA/Cuqxnz633PXDzbE9RU4INAICITJs2f/z4H7I9BeuyDh02DmGDbE9RU97DBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAECnBBgAAEKlUtgfIplcfuW3HDq2yPcXaKplIJpPJORNezfYgsUsmktdc82a2pwAAYK20XgdbsyabHH7Y8I8//j7bg7Aue/75Y7M9AgAAa6v1OthCCNOnz//227nZnoJ1WWlpRbZHAABgbeU9bAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJESbAAAAJGqhWBLJpMD+/d995WnXhg+tOP27Vf/BgEAAAghpFb/Jk7s3WuzTTfu1KNX40ZFTw8bcsBR/abPmLn6NwsAALCeq4VX2Aac3OevN99RWlY2dfqMW+96oGePrqt/mwAAAKxusBXUrVvYsMEPs2Znvhw3/rOdnBUJAABQG1Y32PLz89LpdDqdznw5f35JUWHD1Z4KAACA1X4PW2lpaTKZTCaTmWarV69gztx5mW/Vz00X10mHEPbqts9ee+6ek0y2a7Nli2ZNVvMea1HD+gVXX93txx8XZXuQtVIiERKJRDpdme1BYrf55kVHHNG2TZvG2R5kRRIhERKVlXboWqnNNhs0adLgoYcOr1pJJBOJEByh64xEIoQQsn6AJhLhlsE9F5SUZXmOtV8ymQiO0GXYoHG9fv223333ZtkeZCVEcoRSc82bF27SJP/u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"]
                },
                {
                  "type": "integer",
                  "attributes": {},
                  "value": [1168]
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
                                  "value": [33.3328339]
                                },
                                {
                                  "type": "double",
                                  "attributes": {},
                                  "value": [1162.52054795]
                                },
                                {
                                  "type": "double",
                                  "attributes": {},
                                  "value": [652.5890411]
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
                          "value": [1168]
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

