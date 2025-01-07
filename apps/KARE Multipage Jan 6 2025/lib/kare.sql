SELECT
  *
FROM
  "kareProjects"
WHERE
  CASE
    WHEN {{UAvariable.value}} = true THEN
    (
 {{ formatDataAsArray(multiselect2.value).length }} > 0 AND {{ formatDataAsArray(multiselect3.value).length }} = 0
AND kare_group = ANY ({{ multiselect2.value }}) AND active_project_year BETWEEN {{rangeSlider1.value['start']}} AND {{rangeSlider1.value['end']}} 
)
OR (
  {{ formatDataAsArray(multiselect2.value).length }} > 0 AND {{ formatDataAsArray(multiselect3.value).length }} > 0
AND kare_group = ANY ({{ multiselect2.value }}) AND active_project_year BETWEEN {{rangeSlider1.value['start']}} AND {{rangeSlider1.value['end']}} AND sales_id = ANY ({{  multiselect3.value }})
)
OR (
  {{ formatDataAsArray(multiselect2.value).length }} = 0 AND {{ formatDataAsArray(multiselect3.value).length }} > 0 AND sales_id = ANY ({{  multiselect3.value }})
 AND active_project_year BETWEEN {{rangeSlider1.value['start']}} AND {{rangeSlider1.value['end']}}
)
OR (
{{ formatDataAsArray(multiselect2.value).length }} = 0 AND {{ formatDataAsArray(multiselect3.value).length }} = 0
 AND active_project_year BETWEEN {{rangeSlider1.value['start']}} AND {{rangeSlider1.value['end']}} 
)
    ELSE 
     (
 {{ formatDataAsArray(multiselect2.value).length }} > 0
AND kare_group = ANY ({{ multiselect2.value }}) AND active_project_year BETWEEN {{rangeSlider1.value['start']}} AND {{rangeSlider1.value['end']}} AND sales_id = {{salesVar.value}}
)

OR (
 {{ formatDataAsArray(multiselect2.value).length }} = 0
 AND active_project_year BETWEEN {{rangeSlider1.value['start']}} AND {{rangeSlider1.value['end']}} AND sales_id = {{salesVar.value}}
)
  END;