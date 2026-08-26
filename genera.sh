#!/bin/bash

GeneraPresentacion(){
  prezentprogramo -t template/default/template.cfg $1.rst $1_html
  sed -ie "s/3840px/1742px/g" $1_html/index.html
}

GeneraPresentacion Día1
GeneraPresentacion Día2

wait