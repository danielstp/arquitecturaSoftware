#!/bin/bash

GeneraPresentacion(){
  ~/.pyenv/versions/3.12.11/bin/hovercraft -t template/default/template.cfg $1.rst $1_html
}

GeneraPresentacion Día1
GeneraPresentacion Día2

wait