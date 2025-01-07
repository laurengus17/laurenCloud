var dataseries = [
{
    "name": "lbs",
    "x": {{formatDataAsObject(DisplayD?.data)['monthYear']}},
    "y": {{formatDataAsObject(DisplayD?.data)['lbs']}},
    "type": "bar",
    "hovertemplate": "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
    "transforms": [
      {
        "type": "groupby",
        "groups": {{formatDataAsObject(DisplayD?.data)[grpSwitch?.value]}},
        "styles": [
          {
            "target": {{_.uniq(formatDataAsObject(DisplayD?.data)[grpSwitch?.value])[0]}},
            "value": {
              "marker": {
                "color": "#1E3A8A"
              }
            }
          },
          {
            "target": {{_.uniq(formatDataAsObject(DisplayD?.data)[grpSwitch?.value])[1]}},
            "value": {
              "marker": {
                "color": "#3170F9"
              }
            }
          },
          {
            "target": {{_.uniq(formatDataAsObject(DisplayD?.data)[grpSwitch?.value])[2]}},
            "value": {
              "marker": {
                "color": "#60A5FA"
              }
            }
          },
          {
            "target": {{_.uniq(formatDataAsObject(DisplayD?.data)[grpSwitch?.value])[3]}},
            "value": {
              "marker": {
                "color": "#DBEAFE"
              }
            }
          },
          {
            "target": {{_.uniq(formatDataAsObject(DisplayD?.data)[grpSwitch?.value])[4]}},
            "value": {
              "marker": {
                "color": "#FDE68A"
              }
            }
          },
          {
            "target": {{_.uniq(formatDataAsObject(DisplayD?.data)[grpSwitch?.value])[5]}},
            "value": {
              "marker": {
                "color": "#F59E0B"
              }
            }
          },
          {
            "target": {{_.uniq(formatDataAsObject(DisplayD?.data)[grpSwitch?.value])[6]}},
            "value": {
              "marker": {
                "color": "#CD6F00"
              }
            }
          },
          {
            "target": {{_.uniq(formatDataAsObject(DisplayD?.data)[grpSwitch?.value])[7]}},
            "value": {
              "marker": {
                "color": "#92400E"
              }
            }
          },
          {
            "target": {{_.uniq(formatDataAsObject(DisplayD?.data)[grpSwitch?.value])[8]}},
            "value": {
              "marker": {
                "color": "#064E3B"
              }
            }
          },
          {
            "target": {{_.uniq(formatDataAsObject(DisplayD?.data)[grpSwitch?.value])[9]}},
            "value": {
              "marker": {
                "color": "#059669"
              }
            }
          },
          {
            "target": {{_.uniq(formatDataAsObject(DisplayD?.data)[grpSwitch?.value])[10]}},
            "value": {
              "marker": {
                "color": "#34D399"
              }
            }
          },
          {
            "target": {{_.uniq(formatDataAsObject(DisplayD?.data)[grpSwitch?.value])[11]}},
            "value": {
              "marker": {
                "color": "#A7F3D0"
              }
            }
          },
          {
            "target": {{_.uniq(formatDataAsObject(DisplayD?.data)[grpSwitch?.value])[12]}},
            "value": {
              "marker": {
                "color": "#EECFF3"
              }
            }
          },
          {
            "target": {{_.uniq(formatDataAsObject(DisplayD.data)[grpSwitch?.value])[13]}},
            "value": {
              "marker": {
                "color": "#CF94D8"
              }
            }
          },
          {
            "target": {{_.uniq(formatDataAsObject(DisplayD?.data)[grpSwitch?.value])[14]}},
            "value": {
              "marker": {
                "color": "#AE57BB"
              }
            }
          },
          {
            "target": {{_.uniq(formatDataAsObject(DisplayD?.data)[grpSwitch?.value])[15]}},
            "value": {
              "marker": {
                "color": "#6E3276"
              }
            }
          },
          {
            "target": {{_.uniq(formatDataAsObject(DisplayD?.data)[grpSwitch?.value])[16]}},
            "value": {
              "marker": {
                "color": "#1E3A8A"
              }
            }
          },
          {
            "target": {{_.uniq(formatDataAsObject(DisplayD?.data)[grpSwitch?.value])[17]}},
            "value": {
              "marker": {
                "color": "#3170F9"
              }
            }
          },
          {
            "target": {{_.uniq(formatDataAsObject(DisplayD?.data)[grpSwitch?.value])[18]}},
            "value": {
              "marker": {
                "color": "#60A5FA"
              }
            }
          },
          {
            "target": {{_.uniq(formatDataAsObject(DisplayD?.data)[grpSwitch?.value])[19]}},
            "value": {
              "marker": {
                "color": "#DBEAFE"
              }
            }
          },
          {
            "target": {{_.uniq(formatDataAsObject(DisplayD?.data)[grpSwitch?.value])[20]}},
            "value": {
              "marker": {
                "color": "#FDE68A"
              }
            }
          }
        ]
      },
      {
        "type": "sort",
        "target": {{formatDataAsObject(DisplayD?.data)['monthYear']}},
        "order": "ascending"
      },
      {
        "type": "aggregate",
        "groups": {{formatDataAsObject(DisplayD?.data)['monthYear']}},
        "aggregations": [
          {
            "target": "y",
            "func": "sum",
            "enabled": true
          }
        ]
      }
    ]
  },
  {
    "name": "lbs",
    "x": {{formatDataAsObject(DisplayD?.data)['monthYear']}},
    "y": {{formatDataAsObject(DisplayD?.data)['lbs']}},
    "type": "line",
    "hovertemplate": "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
    "transforms": [
      {
        "type": "groupby",
        "groups": {{formatDataAsObject(DisplayD?.data)[grpSwitch?.value]}},
        "styles": []
      },
      {
        "type": "sort",
        "target": {{formatDataAsObject(DisplayD?.data)['monthYear']}},
        "order": "ascending"
      },
      {
        "type": "aggregate",
        "groups": {{formatDataAsObject(DisplayD?.data)['monthYear']}},
        "aggregations": [
          {
            "target": "y",
            "func": "sum",
            "enabled": true
          }
        ]
      }
    ],
    "marker": {},
    "mode": "lines+markers"
  }
];
var selectedIndex = {{ select1?.value }};

for (let x = 0; x < Object.keys(dataseries).length; x++) {
  if (selectedIndex == x) {
    console.log({{ select1.selectedItem?.label }});
    dataseries[x].visible = true;
  }
  else {
    dataseries[x].visible = false;
  }
}

console.log("evis: " + dataseries[0].visible);
console.log("lvis: " + dataseries[1].visible);

return dataseries;