%%
%% Copyright (C) 2012 by Nacer Khalil
%%
%% This program is free software; you can redistribute it and/or modify
%% it under the terms of the GNU General Public License as published by
%% the Free Software Foundation; either version 3 of the License, or
%% (at your option) any later version.
%%
%% This program is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%% GNU General Public License for more details.
%%
%% You should have received a copy of the GNU General Public License
%% along with this program.  If not, see <http://www.gnu.org/licenses/>.
%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% dependencies

:- register_ros_package(ias_knowledge_base).
:- register_ros_package(comp_cop).
:- register_ros_package(comp_barcoo).

:- use_module(library('comp_barcoo')).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% parse OWL files, register name spaces

:- owl_parser:owl_parse('/owl/barcoo.owl', false, false, true).
:- rdf_db:rdf_register_ns(comp_germandeli, 'http://www.barcoo.com/barcoo.owl#', [keep(true)]).


:- owl_parser:owl_parse('/owl/barcoo.owl', false, false, true).
:- rdf_db:rdf_register_ns(germandeli, 'http://www.barcoo.com/barcoo.owl#', [keep(true)]).
