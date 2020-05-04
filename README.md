# Changelog 3.14 (Pi)

The following changelogs are the result of this [filter](https://github.com/qgis/QGIS/pulls?page=1&q=is%3Apr+is%3Aclosed+label%3Afeature+merged%3A2020-02-22T00%3A00%3A00Z..2020-05-15T12%3A00%3A00Z):

```
is:pr is:closed label:feature merged:2020-02-22T00:00:00Z..2020-05-15T12:00:00Z
```

- **Release date freeze** : 15 May,2020
- **Release date packaging**: 19 June, 2020
- **Release date**: 22 June, 2020

![splash](./imgs/Bucarest2019.png)

**---> UPDATED 2020-05-03 <---****---> UPDATED 2020-05-03 <---****---> UPDATED 2020-05-03 <---**

<!-- TOC -->

- [Changelog 3.14 (Pi)](#changelog-314-pi)
  - [Automatic placement of labels outside polygons](#automatic-placement-of-labels-outside-polygons)
  - [Feature browser for preview in expression builder](#feature-browser-for-preview-in-expression-builder)
  - [add expression close_line](#add-expression-closeline)
  - [Allow overriding the legend patch size on a per-item basis](#allow-overriding-the-legend-patch-size-on-a-per-item-basis)
  - [Allow control over the horizontal spacing before legend group/subgroup/symbols](#allow-control-over-the-horizontal-spacing-before-legend-groupsubgroupsymbols)
  - [Expressions for geometry Z and M minimum and maximum](#expressions-for-geometry-z-and-m-minimum-and-maximum)
  - [1D mesh width/color varying](#1d-mesh-widthcolor-varying)
  - [Manage legend patch shapes through style manager](#manage-legend-patch-shapes-through-style-manager)
  - [ability to remove custom functions (fix #27513)](#ability-to-remove-custom-functions-fix-27513)
  - [add is_multipart expression for geometry](#add-ismultipart-expression-for-geometry)
  - [Allow configuring legend patch shapes by double-clicking on legend items](#allow-configuring-legend-patch-shapes-by-double-clicking-on-legend-items)
  - [ascii expression](#ascii-expression)
  - [Support pasting pictures directly into layouts](#support-pasting-pictures-directly-into-layouts)
  - [Add vector tiles to Datasource manager dialog and Layers menu](#add-vector-tiles-to-datasource-manager-dialog-and-layers-menu)
  - [New modeler algorithm for creating conditional branches](#new-modeler-algorithm-for-creating-conditional-branches)
  - [import/export for ArcGIS Map and FeatureServer connections (fix #27485)](#importexport-for-arcgis-map-and-featureserver-connections-fix-27485)
  - [Allow reordering model inputs](#allow-reordering-model-inputs)
  - [Add XYZ tiles to Datasource manager dialog and Layers menu](#add-xyz-tiles-to-datasource-manager-dialog-and-layers-menu)
  - [Defer model validation](#defer-model-validation)
  - [Vector tile layer - part 5 (identify tool)](#vector-tile-layer---part-5-identify-tool)
  - [Server: add QGIS_SERVER_IGNORE_BAD_LAYERS config option](#server-add-qgisserverignorebadlayers-config-option)
  - [Add support for different raster data types in Create constant raster layer algorithm](#add-support-for-different-raster-data-types-in-create-constant-raster-layer-algorithm)
  - [add native Round raster algorithm](#add-native-round-raster-algorithm)
  - [Add avoid intersection/overlap mode](#add-avoid-intersectionoverlap-mode)
  - [Forms: expression controlled aliases (labels)](#forms-expression-controlled-aliases-labels)
  - [Vector tile layer - part 4 (labeling)](#vector-tile-layer---part-4-labeling)
  - [Allow copying/cut/paste of model components](#allow-copyingcutpaste-of-model-components)
  - [Allow appending processing results to existing layers](#allow-appending-processing-results-to-existing-layers)
  - ["Allow plugins to register custom ""Project Open"" handlers"](#%22allow-plugins-to-register-custom-%22%22project-open%22%22-handlers%22)
  - [Allow marker items to sync rotation with maps](#allow-marker-items-to-sync-rotation-with-maps)
  - [New item type for marker symbols](#new-item-type-for-marker-symbols)
  - ["Expression builder : add layer_property(...,'distance_units')](#%22expression-builder--add-layerpropertydistanceunits)
  - [Added move to bottom in layertreeview context menu](#added-move-to-bottom-in-layertreeview-context-menu)
  - ["Show a menu next to scale widget buttons, to allow setting the widget directly to a scale from a print layout map"](#%22show-a-menu-next-to-scale-widget-buttons-to-allow-setting-the-widget-directly-to-a-scale-from-a-print-layout-map%22)
  - [Postgres raster temporal API support](#postgres-raster-temporal-api-support)
  - [Allow creation of group boxes in models](#allow-creation-of-group-boxes-in-models)
  - [Spatialite provider transactions](#spatialite-provider-transactions)
  - [Port output parameter wrappers to new API](#port-output-parameter-wrappers-to-new-api)
  - [Add import content from clipboard for fixed table items](#add-import-content-from-clipboard-for-fixed-table-items)
  - [Processing: show input and output values for children after running model through designer](#processing-show-input-and-output-values-for-children-after-running-model-through-designer)
  - ["Add ""Save Log to File"" algorithm for models"](#%22add-%22%22save-log-to-file%22%22-algorithm-for-models%22)
  - [plug mesh layer to QGIS temporal framework](#plug-mesh-layer-to-qgis-temporal-framework)
  - [Network logger - more functionality](#network-logger---more-functionality)
  - [Port last remaining input parameters to new API](#port-last-remaining-input-parameters-to-new-api)
  - [Raster Layer Contour Renderer](#raster-layer-contour-renderer)
  - [Add percentage size unit for Raster Image Marker and Raster fill layers symbology.](#add-percentage-size-unit-for-raster-image-marker-and-raster-fill-layers-symbology)
  - ["Port Feature Source, Raster, Vector and Mesh Layer parameters to new API"](#%22port-feature-source-raster-vector-and-mesh-layer-parameters-to-new-api%22)
  - ["Server project settings, add 'expanded' attribute"](#%22server-project-settings-add-expanded-attribute%22)
  - [Inbuilt network logging tool](#inbuilt-network-logging-tool)
  - [Allowing saving outputs direct to more database formats (and other nice stuff)](#allowing-saving-outputs-direct-to-more-database-formats-and-other-nice-stuff)
  - [Vector tile layer - part 1](#vector-tile-layer---part-1)
  - [Allow running algorithms directly on database (and other non-disk)](#allow-running-algorithms-directly-on-database-and-other-non-disk)
  - ["Port processing extent parameter to new api, many other improvements"](#%22port-processing-extent-parameter-to-new-api-many-other-improvements%22)
  - [Interface and API for unified development/debugging tools](#interface-and-api-for-unified-developmentdebugging-tools)
  - [Expose per-feature-source advanced options for processing inputs](#expose-per-feature-source-advanced-options-for-processing-inputs)
  - [Resampling from vertex values to face values](#resampling-from-vertex-values-to-face-values)
  - [Enable snapping to grid for models in designer](#enable-snapping-to-grid-for-models-in-designer)
  - ["Add numeric formatter ""fraction"" style"](#%22add-numeric-formatter-%22%22fraction%22%22-style%22)
  - ["Add ""stepped line"" and ""hollow"" scalebar styles"](#%22add-%22%22stepped-line%22%22-and-%22%22hollow%22%22-scalebar-styles%22)
  - [Allow scalebar line style to be set using standard QGIS line symbols](#allow-scalebar-line-style-to-be-set-using-standard-qgis-line-symbols)
  - [Add data-defined property to font family/style for font markers](#add-data-defined-property-to-font-familystyle-for-font-markers)
  - [coloring mesh vector dataset with color ramp shader](#coloring-mesh-vector-dataset-with-color-ramp-shader)
  - ["add maptip, expression display and eval_template expressions"](#%22add-maptip-expression-display-and-evaltemplate-expressions%22)
  - ["Add @layers, @layer_ids project scope variables"](#%22add-layers-layerids-project-scope-variables%22)
  - [Add a font style setting for font markers](#add-a-font-style-setting-for-font-markers)
  - [Rework picture item UI and behavior](#rework-picture-item-ui-and-behavior)
  - ["Add ""filter by geometry type"" and ""filter by layer type"" algorithms to processing"](#%22add-%22%22filter-by-geometry-type%22%22-and-%22%22filter-by-layer-type%22%22-algorithms-to-processing%22)
  - [Make Add Group button act as Group Selected if selected layers >= 2](#make-add-group-button-act-as-group-selected-if-selected-layers--2)
  - ["Feature: Add toolbutton to ""Deselect Features from the Current Active layer"""](#%22feature-add-toolbutton-to-%22%22deselect-features-from-the-current-active-layer%22%22%22)
  - ["Optionally, also remove EMPTY geometries in RemoveNullGeometries algorithm"](#%22optionally-also-remove-empty-geometries-in-removenullgeometries-algorithm%22)
  - [Data type support for QgsProcessingParameterMapLayer](#data-type-support-for-qgsprocessingparametermaplayer)
  - [Add processing parameter types for database schema and table name](#add-processing-parameter-types-for-database-schema-and-table-name)
  - [Add description to value relation widget](#add-description-to-value-relation-widget)
  - ["Add multi-selection handling to model designer, interactive resizing"](#%22add-multi-selection-handling-to-model-designer-interactive-resizing%22)
  - [New database table name widget](#new-database-table-name-widget)
  - [Add dedicated parameter type for database connections](#add-dedicated-parameter-type-for-database-connections)
  - [arrows for 3D mesh layer dataset rendering](#arrows-for-3d-mesh-layer-dataset-rendering)
  - [Add undo/redo support to model designer](#add-undoredo-support-to-model-designer)
  - [Add control over anchor point for callout on label](#add-control-over-anchor-point-for-callout-on-label)
  - [PG: expose foreign tables](#pg-expose-foreign-tables)
  - [Add expression variables for current map temporal range](#add-expression-variables-for-current-map-temporal-range)
  - [Remember parameter values between model designer runs](#remember-parameter-values-between-model-designer-runs)
  - [allow to install stable or experimental](#allow-to-install-stable-or-experimental)
  - [PG raster expose set filter to app](#pg-raster-expose-set-filter-to-app)
  - [Comments in Processing Models](#comments-in-processing-models)
  - [Mesh 1D Renderer](#mesh-1d-renderer)
  - [Get current parent form values in child forms](#get-current-parent-form-values-in-child-forms)
  - [Relation wdgt: add checkbox to hide save child edits button](#relation-wdgt-add-checkbox-to-hide-save-child-edits-button)
  - [Relation widget force suppress popup](#relation-widget-force-suppress-popup)
  - [New standalone console tool for running processing algorithms](#new-standalone-console-tool-for-running-processing-algorithms)
  - ["New parameter type for datetime (or date, or time)](#%22new-parameter-type-for-datetime-or-date-or-time)
  - [QGIS Project temporal settings](#qgis-project-temporal-settings)
  - [Make CRS controlable by a variable](#make-crs-controlable-by-a-variable)
  - [mesh simplification](#mesh-simplification)
  - [WMS-T layers temporal constrains support](#wms-t-layers-temporal-constrains-support)
  - [Temporal API](#temporal-api)
  - [New snapping modes: Centroid and middle of a segment (midpoint)](#new-snapping-modes-centroid-and-middle-of-a-segment-midpoint)
  - [Show 'template layer' constraints info in the Refactor fields algorithm's UI](#show-template-layer-constraints-info-in-the-refactor-fields-algorithms-ui)

<!-- /TOC -->

## Automatic placement of labels outside polygons
- author: nyalldawson
- merged: 2020-05-03T19:38:49Z
- milestone: 3.14.0
- tags: FeatureLabeling
- PR: [36106](https://github.com/qgis/QGIS/pull/36106)

[↑ come back ↑](#changelog-314-pi)

## Feature browser for preview in expression builder
- author: 3nids
- merged: 2020-04-30T15:50:11Z
- milestone: 3.14.0
- tags: FeatureNeeds Documentation
- PR: [36089](https://github.com/qgis/QGIS/pull/36089)

[↑ come back ↑](#changelog-314-pi)

## add expression close_line
- author: JanCaha
- merged: 2020-05-01T23:08:36Z
- milestone: 3.14.0
- tags: ExpressionsFeature
- PR: [36069](https://github.com/qgis/QGIS/pull/36069)

[↑ come back ↑](#changelog-314-pi)

## Allow overriding the legend patch size on a per-item basis
- author: nyalldawson
- merged: 2020-04-28T01:31:45Z
- milestone: 3.14.0
- tags: FeaturePrint Layouts
- PR: [36013](https://github.com/qgis/QGIS/pull/36013)

[↑ come back ↑](#changelog-314-pi)

## Allow control over the horizontal spacing before legend group/subgroup/symbols
- author: nyalldawson
- merged: 2020-04-24T18:49:55Z
- milestone: 3.14.0
- tags: FeaturePrint Layouts
- PR: [35974](https://github.com/qgis/QGIS/pull/35974)

[↑ come back ↑](#changelog-314-pi)

## Expressions for geometry Z and M minimum and maximum
- author: JanCaha
- merged: 2020-04-27T11:28:23Z
- milestone: 3.14.0
- tags: ExpressionsFeature
- PR: [35928](https://github.com/qgis/QGIS/pull/35928)

[↑ come back ↑](#changelog-314-pi)

## 1D mesh width/color varying
- author: vcloarec
- merged: 2020-04-24T08:49:25Z
- milestone: 3.14.0
- tags: ChangelogDocumentationFeatureMesh
- PR: [35926](https://github.com/qgis/QGIS/pull/35926)

[↑ come back ↑](#changelog-314-pi)

## Manage legend patch shapes through style manager
- author: nyalldawson
- merged: 2020-04-22T02:43:03Z
- milestone: 3.14.0
- tags: FeatureNeeds Documentation
- PR: [35909](https://github.com/qgis/QGIS/pull/35909)

[↑ come back ↑](#changelog-314-pi)

## ability to remove custom functions (fix #27513)

- author: alexbruy
- merged: 2020-04-30T06:38:40Z
- milestone: 3.14.0
- tags: FeatureNeeds Documentation
- PR: [35901](https://github.com/qgis/QGIS/pull/35901)

[↑ come back ↑](#changelog-314-pi)

## add is_multipart expression for geometry
- author: JanCaha
- merged: 2020-04-21T19:26:55Z
- milestone: 3.14.0
- tags: ChangelogExpressionsFeature
- PR: [35889](https://github.com/qgis/QGIS/pull/35889)

[↑ come back ↑](#changelog-314-pi)

## Allow configuring legend patch shapes by double-clicking on legend items
- author: nyalldawson
- merged: 2020-04-21T00:40:51Z
- milestone: 3.14.0
- tags: FeatureNeeds Documentation
- PR: [35863](https://github.com/qgis/QGIS/pull/35863)

[↑ come back ↑](#changelog-314-pi)

## ascii expression
- author: JanCaha
- merged: 2020-04-19T23:28:57Z
- milestone: 3.14.0
- tags: ExpressionsFeature
- PR: [35839](https://github.com/qgis/QGIS/pull/35839)

[↑ come back ↑](#changelog-314-pi)

## Support pasting pictures directly into layouts
- author: nyalldawson
- merged: 2020-04-17T03:48:07Z
- milestone: 3.14.0
- tags: FeaturePrint Layouts
- PR: [35821](https://github.com/qgis/QGIS/pull/35821)

[↑ come back ↑](#changelog-314-pi)

## Add vector tiles to Datasource manager dialog and Layers menu
- author: alexbruy
- merged: 2020-04-17T08:59:40Z
- milestone: 3.14.0
- PR: [35815](https://github.com/qgis/QGIS/pull/35815)

[↑ come back ↑](#changelog-314-pi)

## New modeler algorithm for creating conditional branches
- author: nyalldawson
- merged: 2020-04-16T06:02:54Z
- milestone: 3.14.0
- tags: FeatureProcessing
- PR: [35808](https://github.com/qgis/QGIS/pull/35808)

[↑ come back ↑](#changelog-314-pi)

## import/export for ArcGIS Map and FeatureServer connections (fix #27485)

- author: alexbruy
- merged: 2020-04-15T17:20:24Z
- milestone: 3.14.0
- PR: [35790](https://github.com/qgis/QGIS/pull/35790)

[↑ come back ↑](#changelog-314-pi)

## Allow reordering model inputs
- author: nyalldawson
- merged: 2020-04-15T20:03:49Z
- milestone: 3.14.0
- tags: FeatureProcessing
- PR: [35778](https://github.com/qgis/QGIS/pull/35778)

[↑ come back ↑](#changelog-314-pi)

## Add XYZ tiles to Datasource manager dialog and Layers menu
- author: alexbruy
- merged: 2020-04-15T08:26:24Z
- milestone: 3.14.0
- tags: FeatureGUI/UX
- PR: [35764](https://github.com/qgis/QGIS/pull/35764)

[↑ come back ↑](#changelog-314-pi)

## Defer model validation
- author: nyalldawson
- merged: 2020-04-14T10:27:22Z
- milestone: 3.14.0
- tags: FeatureProcessing
- PR: [35760](https://github.com/qgis/QGIS/pull/35760)

[↑ come back ↑](#changelog-314-pi)

## Vector tile layer - part 5 (identify tool)

- author: wonder-sk
- merged: 2020-04-15T11:38:21Z
- milestone: 3.14.0
- PR: [35748](https://github.com/qgis/QGIS/pull/35748)

[↑ come back ↑](#changelog-314-pi)

## Server: add QGIS_SERVER_IGNORE_BAD_LAYERS config option
- author: elpaso
- merged: 2020-04-14T05:57:10Z
- milestone: 3.14.0
- tags: FeatureNeeds DocumentationServerbackport release-3_10backport release-3_12
- PR: [35738](https://github.com/qgis/QGIS/pull/35738)

[↑ come back ↑](#changelog-314-pi)

## Add support for different raster data types in Create constant raster layer algorithm
- author: root676
- merged: 2020-04-13T23:20:57Z
- milestone: 3.14.0
- tags: FeatureProcessing
- PR: [35727](https://github.com/qgis/QGIS/pull/35727)

[↑ come back ↑](#changelog-314-pi)

## add native Round raster algorithm
- author: root676
- merged: 2020-04-12T21:34:27Z
- milestone: 3.14.0
- tags: FeatureProcessing
- PR: [35694](https://github.com/qgis/QGIS/pull/35694)

[↑ come back ↑](#changelog-314-pi)

## Add avoid intersection/overlap mode
- author: nirvn
- merged: 2020-04-10T06:42:08Z
- milestone: 3.14.0
- tags: DigitizingFeature
- PR: [35689](https://github.com/qgis/QGIS/pull/35689)

[↑ come back ↑](#changelog-314-pi)

## Forms: expression controlled aliases (labels)

- author: elpaso
- merged: 2020-04-15T13:09:15Z
- milestone: 3.14.0
- tags: FeatureForms
- PR: [35688](https://github.com/qgis/QGIS/pull/35688)

[↑ come back ↑](#changelog-314-pi)

## Vector tile layer - part 4 (labeling)

- author: wonder-sk
- merged: 2020-04-14T22:33:30Z
- milestone: 3.14.0
- PR: [35657](https://github.com/qgis/QGIS/pull/35657)

[↑ come back ↑](#changelog-314-pi)

## Allow copying/cut/paste of model components
- author: nyalldawson
- merged: 2020-04-14T04:36:03Z
- milestone: 3.14.0
- tags: FeatureProcessing
- PR: [35644](https://github.com/qgis/QGIS/pull/35644)

[↑ come back ↑](#changelog-314-pi)

## Allow appending processing results to existing layers
- author: nyalldawson
- merged: 2020-04-07T07:05:45Z
- milestone: 3.14.0
- tags: FeatureProcessing
- PR: [35641](https://github.com/qgis/QGIS/pull/35641)

[↑ come back ↑](#changelog-314-pi)

## "Allow plugins to register custom ""Project Open"" handlers"
- author: nyalldawson
- merged: 2020-04-06T23:18:50Z
- milestone: 3.14.0
- tags: APIFeature
- PR: [35606](https://github.com/qgis/QGIS/pull/35606)

[↑ come back ↑](#changelog-314-pi)

## Allow marker items to sync rotation with maps
- author: nyalldawson
- merged: 2020-04-06T04:04:21Z
- milestone: 3.14.0
- tags: FeaturePrint Layouts
- PR: [35591](https://github.com/qgis/QGIS/pull/35591)

[↑ come back ↑](#changelog-314-pi)

## New item type for marker symbols
- author: nyalldawson
- merged: 2020-04-05T04:23:23Z
- milestone: 3.14.0
- tags: FeatureNeeds DocumentationPrint Layouts
- PR: [35576](https://github.com/qgis/QGIS/pull/35576)

[↑ come back ↑](#changelog-314-pi)

## "Expression builder : add layer_property(...,'distance_units')
"
- author: jmonticolo
- merged: 2020-04-06T23:20:39Z
- milestone: 3.14.0
- tags: ExpressionsFeature
- PR: [35559](https://github.com/qgis/QGIS/pull/35559)

[↑ come back ↑](#changelog-314-pi)

## Added move to bottom in layertreeview context menu
- author: uclaros
- merged: 2020-04-04T22:05:29Z
- milestone: 3.14.0
- tags: ChangelogFeature
- PR: [35531](https://github.com/qgis/QGIS/pull/35531)

[↑ come back ↑](#changelog-314-pi)

## "Show a menu next to scale widget buttons, to allow setting the widget directly to a scale from a print layout map"
- author: nyalldawson
- merged: 2020-04-02T23:06:10Z
- milestone: 3.14.0
- PR: [35518](https://github.com/qgis/QGIS/pull/35518)

[↑ come back ↑](#changelog-314-pi)

## Postgres raster temporal API support
- author: elpaso
- merged: 2020-04-06T19:54:23Z
- milestone: 3.14.0
- tags: Data ProviderFeatureRaster
- PR: [35511](https://github.com/qgis/QGIS/pull/35511)

[↑ come back ↑](#changelog-314-pi)

## Allow creation of group boxes in models
- author: nyalldawson
- merged: 2020-04-01T08:20:10Z
- milestone: 3.14.0
- tags: FeatureNeeds DocumentationProcessing
- PR: [35494](https://github.com/qgis/QGIS/pull/35494)

[↑ come back ↑](#changelog-314-pi)

## Spatialite provider transactions
- author: elpaso
- merged: 2020-04-01T09:15:15Z
- milestone: 3.14.0
- tags: Data ProviderFeature
- PR: [35488](https://github.com/qgis/QGIS/pull/35488)

[↑ come back ↑](#changelog-314-pi)

## Port output parameter wrappers to new API
- author: nyalldawson
- merged: 2020-04-01T16:29:55Z
- milestone: 3.14.0
- tags: FeatureProcessing
- PR: [35484](https://github.com/qgis/QGIS/pull/35484)

[↑ come back ↑](#changelog-314-pi)

## Add import content from clipboard for fixed table items
- author: nirvn
- merged: 2020-03-31T10:21:11Z
- milestone: 3.14.0
- tags: FeatureNeeds DocumentationPrint Layouts
- PR: [35475](https://github.com/qgis/QGIS/pull/35475)

[↑ come back ↑](#changelog-314-pi)

## Processing: show input and output values for children after running model through designer
- author: nyalldawson
- merged: 2020-03-31T09:35:52Z
- milestone: 3.14.0
- tags: FeatureNeeds DocumentationProcessing
- PR: [35474](https://github.com/qgis/QGIS/pull/35474)

[↑ come back ↑](#changelog-314-pi)

## "Add ""Save Log to File"" algorithm for models"
- author: nyalldawson
- merged: 2020-03-31T09:35:30Z
- milestone: 3.14.0
- tags: FeatureNeeds DocumentationProcessing
- PR: [35473](https://github.com/qgis/QGIS/pull/35473)

[↑ come back ↑](#changelog-314-pi)

## plug mesh layer to QGIS temporal framework
- author: vcloarec
- merged: 2020-04-03T06:21:16Z
- milestone: 3.14.0
- tags: ChangelogFeatureMeshNeeds DocumentationSquash!
- PR: [35466](https://github.com/qgis/QGIS/pull/35466)

[↑ come back ↑](#changelog-314-pi)

## Network logger - more functionality
- author: nyalldawson
- merged: 2020-03-31T02:53:44Z
- milestone: 3.14.0
- PR: [35454](https://github.com/qgis/QGIS/pull/35454)

[↑ come back ↑](#changelog-314-pi)

## Port last remaining input parameters to new API
- author: nyalldawson
- merged: 2020-03-30T15:06:49Z
- milestone: 3.14.0
- tags: FeatureProcessing
- PR: [35452](https://github.com/qgis/QGIS/pull/35452)

[↑ come back ↑](#changelog-314-pi)

## Raster Layer Contour Renderer
- author: wonder-sk
- merged: 2020-03-31T06:51:55Z
- milestone: 3.14.0
- PR: [35446](https://github.com/qgis/QGIS/pull/35446)

[↑ come back ↑](#changelog-314-pi)

## Add percentage size unit for Raster Image Marker and Raster fill layers symbology.
- author: beketata
- merged: 2020-04-07T22:32:21Z
- milestone: 3.14.0
- tags: FeatureSquash!Symbology
- PR: [35438](https://github.com/qgis/QGIS/pull/35438)

[↑ come back ↑](#changelog-314-pi)

## "Port Feature Source, Raster, Vector and Mesh Layer parameters to new API"
- author: nyalldawson
- merged: 2020-03-28T19:56:24Z
- milestone: 3.14.0
- tags: FeatureProcessing
- PR: [35419](https://github.com/qgis/QGIS/pull/35419)

[↑ come back ↑](#changelog-314-pi)

## "Server project settings, add 'expanded' attribute"
- author: mhugent
- merged: 2020-03-30T05:35:07Z
- milestone: 3.14.0
- tags: FeatureServer
- PR: [35408](https://github.com/qgis/QGIS/pull/35408)

[↑ come back ↑](#changelog-314-pi)

## Inbuilt network logging tool
- author: nyalldawson
- merged: 2020-03-30T06:54:23Z
- milestone: 3.14.0
- PR: [35396](https://github.com/qgis/QGIS/pull/35396)

[↑ come back ↑](#changelog-314-pi)

## Allowing saving outputs direct to more database formats (and other nice stuff)

- author: nyalldawson
- merged: 2020-03-26T15:30:28Z
- milestone: 3.14.0
- tags: FeatureProcessing
- PR: [35364](https://github.com/qgis/QGIS/pull/35364)

[↑ come back ↑](#changelog-314-pi)

## Vector tile layer - part 1
- author: wonder-sk
- merged: 2020-04-02T14:06:31Z
- milestone: 3.14.0
- PR: [35341](https://github.com/qgis/QGIS/pull/35341)

[↑ come back ↑](#changelog-314-pi)

## Allow running algorithms directly on database (and other non-disk)
 sources without loading into projects first
- author: nyalldawson
- merged: 2020-03-26T01:55:47Z
- milestone: 3.14.0
- tags: FeatureProcessing
- PR: [35324](https://github.com/qgis/QGIS/pull/35324)

[↑ come back ↑](#changelog-314-pi)

## "Port processing extent parameter to new api, many other improvements"
- author: nyalldawson
- merged: 2020-03-25T09:25:42Z
- milestone: 3.14.0
- tags: FeatureProcessing
- PR: [35321](https://github.com/qgis/QGIS/pull/35321)

[↑ come back ↑](#changelog-314-pi)

## Interface and API for unified development/debugging tools
- author: nyalldawson
- merged: 2020-03-25T10:03:19Z
- milestone: 3.14.0
- tags: APIFeature
- PR: [35319](https://github.com/qgis/QGIS/pull/35319)

[↑ come back ↑](#changelog-314-pi)

## Expose per-feature-source advanced options for processing inputs
- author: nyalldawson
- merged: 2020-03-24T23:42:18Z
- milestone: 3.14.0
- tags: FeatureProcessing
- PR: [35292](https://github.com/qgis/QGIS/pull/35292)

[↑ come back ↑](#changelog-314-pi)

## Resampling from vertex values to face values
- author: vcloarec
- merged: 2020-03-24T09:03:55Z
- milestone: 3.14.0
- tags: ChangelogFeatureMeshNeeds Documentation
- PR: [35264](https://github.com/qgis/QGIS/pull/35264)

[↑ come back ↑](#changelog-314-pi)

## Enable snapping to grid for models in designer
- author: nyalldawson
- merged: 2020-03-23T09:25:34Z
- milestone: 3.14.0
- tags: FeatureNeeds DocumentationProcessing
- PR: [35251](https://github.com/qgis/QGIS/pull/35251)

[↑ come back ↑](#changelog-314-pi)

## "Add numeric formatter ""fraction"" style"
- author: nyalldawson
- merged: 2020-03-23T04:24:38Z
- milestone: 3.14.0
- tags: FeaturePrint Layouts
- PR: [35244](https://github.com/qgis/QGIS/pull/35244)

[↑ come back ↑](#changelog-314-pi)

## "Add ""stepped line"" and ""hollow"" scalebar styles"
- author: nyalldawson
- merged: 2020-03-22T17:08:51Z
- milestone: 3.14.0
- tags: FeaturePrint Layouts
- PR: [35238](https://github.com/qgis/QGIS/pull/35238)

[↑ come back ↑](#changelog-314-pi)

## Allow scalebar line style to be set using standard QGIS line symbols
- author: nyalldawson
- merged: 2020-03-22T06:41:32Z
- milestone: 3.14.0
- tags: FeatureNeeds DocumentationPrint Layouts
- PR: [35225](https://github.com/qgis/QGIS/pull/35225)

[↑ come back ↑](#changelog-314-pi)

## Add data-defined property to font family/style for font markers
- author: nirvn
- merged: 2020-03-22T05:24:09Z
- milestone: 3.14.0
- tags: FeatureNeeds DocumentationSymbology
- PR: [35224](https://github.com/qgis/QGIS/pull/35224)

[↑ come back ↑](#changelog-314-pi)

## coloring mesh vector dataset with color ramp shader
- author: vcloarec
- merged: 2020-03-24T08:58:49Z
- milestone: 3.14.0
- tags: ChangelogFeatureMeshNeeds Documentation
- PR: [35216](https://github.com/qgis/QGIS/pull/35216)

[↑ come back ↑](#changelog-314-pi)

## "add maptip, expression display and eval_template expressions"
- author: Gustry
- merged: 2020-03-25T23:24:20Z
- milestone: 3.14.0
- tags: ExpressionsFeatureNeeds Documentation
- PR: [35211](https://github.com/qgis/QGIS/pull/35211)

[↑ come back ↑](#changelog-314-pi)

## "Add @layers, @layer_ids project scope variables"
- author: nyalldawson
- merged: 2020-03-20T02:56:23Z
- milestone: 3.14.0
- tags: ExpressionsFeatureNeeds Documentation
- PR: [35208](https://github.com/qgis/QGIS/pull/35208)

[↑ come back ↑](#changelog-314-pi)

## Add a font style setting for font markers
- author: nirvn
- merged: 2020-03-21T05:11:17Z
- milestone: 3.14.0
- tags: FeatureNeeds DocumentationSymbology
- PR: [35197](https://github.com/qgis/QGIS/pull/35197)

[↑ come back ↑](#changelog-314-pi)

## Rework picture item UI and behavior
- author: nyalldawson
- merged: 2020-03-19T03:18:49Z
- milestone: 3.14.0
- tags: FeatureNeeds DocumentationPrint Layouts
- PR: [35160](https://github.com/qgis/QGIS/pull/35160)

[↑ come back ↑](#changelog-314-pi)

## "Add ""filter by geometry type"" and ""filter by layer type"" algorithms to processing"
- author: nyalldawson
- merged: 2020-03-17T16:52:38Z
- milestone: 3.14.0
- tags: FeatureNeeds DocumentationProcessing
- PR: [35130](https://github.com/qgis/QGIS/pull/35130)

[↑ come back ↑](#changelog-314-pi)

## Make Add Group button act as Group Selected if selected layers >= 2
- author: uclaros
- merged: 2020-03-16T02:11:08Z
- milestone: 3.14.0
- tags: FeatureNeeds Documentation
- PR: [35097](https://github.com/qgis/QGIS/pull/35097)

[↑ come back ↑](#changelog-314-pi)

## "Feature: Add toolbutton to ""Deselect Features from the Current Active layer"""
- author: suricactus
- merged: 2020-03-18T03:26:49Z
- milestone: 3.14.0
- tags: FeatureNeeds Documentation
- PR: [35085](https://github.com/qgis/QGIS/pull/35085)

[↑ come back ↑](#changelog-314-pi)

## "Optionally, also remove EMPTY geometries in RemoveNullGeometries algorithm"
- author: gacarrillor
- merged: 2020-03-15T07:37:53Z
- milestone: 3.14.0
- tags: FeatureNeeds Documentation
- PR: [35084](https://github.com/qgis/QGIS/pull/35084)

[↑ come back ↑](#changelog-314-pi)

## Data type support for QgsProcessingParameterMapLayer
- author: alexbruy
- merged: 2020-03-15T14:14:21Z
- milestone: 3.14.0
- tags: FeatureProcessing
- PR: [35076](https://github.com/qgis/QGIS/pull/35076)

[↑ come back ↑](#changelog-314-pi)

## Add processing parameter types for database schema and table name
- author: nyalldawson
- merged: 2020-03-14T06:57:16Z
- milestone: 3.14.0
- tags: FeatureProcessing
- PR: [35056](https://github.com/qgis/QGIS/pull/35056)

[↑ come back ↑](#changelog-314-pi)

## Add description to value relation widget
- author: m-kuhn
- merged: 2020-03-17T14:32:47Z
- milestone: 3.14.0
- tags: ChangelogFeature
- PR: [35035](https://github.com/qgis/QGIS/pull/35035)

[↑ come back ↑](#changelog-314-pi)

## "Add multi-selection handling to model designer, interactive resizing"
- author: nyalldawson
- merged: 2020-03-12T03:14:34Z
- milestone: 3.14.0
- tags: FeatureProcessing
- PR: [34987](https://github.com/qgis/QGIS/pull/34987)

[↑ come back ↑](#changelog-314-pi)

## New database table name widget
- author: elpaso
- merged: 2020-03-12T20:35:54Z
- milestone: 3.14.0
- tags: APIFeatureQGIS Browser
- PR: [34968](https://github.com/qgis/QGIS/pull/34968)

[↑ come back ↑](#changelog-314-pi)

## Add dedicated parameter type for database connections
- author: nyalldawson
- merged: 2020-03-10T09:10:54Z
- milestone: 3.14.0
- tags: FeatureProcessing
- PR: [34955](https://github.com/qgis/QGIS/pull/34955)

[↑ come back ↑](#changelog-314-pi)

## arrows for 3D mesh layer dataset rendering
- author: vcloarec
- merged: 2020-03-11T06:51:03Z
- milestone: 3.14.0
- tags: ChangelogFeatureMeshNeeds Documentation
- PR: [34945](https://github.com/qgis/QGIS/pull/34945)

[↑ come back ↑](#changelog-314-pi)

## Add undo/redo support to model designer
- author: nyalldawson
- merged: 2020-03-10T22:39:55Z
- milestone: 3.14.0
- tags: FeatureNeeds DocumentationProcessing
- PR: [34938](https://github.com/qgis/QGIS/pull/34938)

[↑ come back ↑](#changelog-314-pi)

## Add control over anchor point for callout on label
- author: nyalldawson
- merged: 2020-03-09T05:29:52Z
- milestone: 3.14.0
- tags: FeatureLabelingNeeds Documentation
- PR: [34936](https://github.com/qgis/QGIS/pull/34936)

[↑ come back ↑](#changelog-314-pi)

## PG: expose foreign tables
- author: elpaso
- merged: 2020-03-07T03:55:30Z
- milestone: 3.14.0
- tags: Data ProviderFeature
- PR: [34914](https://github.com/qgis/QGIS/pull/34914)

[↑ come back ↑](#changelog-314-pi)

## Add expression variables for current map temporal range
- author: nyalldawson
- merged: 2020-03-08T21:29:46Z
- milestone: 3.14.0
- tags: ExpressionsFeature
- PR: [34898](https://github.com/qgis/QGIS/pull/34898)

[↑ come back ↑](#changelog-314-pi)

## Remember parameter values between model designer runs
- author: nyalldawson
- merged: 2020-03-06T08:22:51Z
- milestone: 3.14.0
- tags: FeatureNeeds DocumentationProcessing
- PR: [34895](https://github.com/qgis/QGIS/pull/34895)

[↑ come back ↑](#changelog-314-pi)

## allow to install stable or experimental
- author: olivierdalang
- merged: 2020-03-15T19:31:18Z
- milestone: 3.14.0
- PR: [34876](https://github.com/qgis/QGIS/pull/34876)

[↑ come back ↑](#changelog-314-pi)

## PG raster expose set filter to app
- author: elpaso
- merged: 2020-03-05T14:34:33Z
- milestone: 3.14.0
- tags: Data ProviderFeatureRasterbackport release-3_12
- PR: [34871](https://github.com/qgis/QGIS/pull/34871)

[↑ come back ↑](#changelog-314-pi)

## Comments in Processing Models
- author: nyalldawson
- merged: 2020-03-05T17:49:17Z
- milestone: 3.14.0
- tags: FeatureNeeds DocumentationProcessingRequires Tests!
- PR: [34856](https://github.com/qgis/QGIS/pull/34856)

[↑ come back ↑](#changelog-314-pi)

## Mesh 1D Renderer
- author: PeterPetrik
- merged: 2020-03-09T04:59:52Z
- milestone: 3.14.0
- tags: ChangelogFeatureNeeds Documentation
- PR: [34848](https://github.com/qgis/QGIS/pull/34848)

[↑ come back ↑](#changelog-314-pi)

## Get current parent form values in child forms
- author: elpaso
- merged: 2020-03-05T09:51:44Z
- milestone: 3.14.0
- tags: FeatureForms
- PR: [34827](https://github.com/qgis/QGIS/pull/34827)

[↑ come back ↑](#changelog-314-pi)

## Relation wdgt: add checkbox to hide save child edits button
- author: elpaso
- merged: 2020-02-28T14:52:46Z
- milestone: 3.14.0
- tags: FeatureFormsGUI/UX
- PR: [34760](https://github.com/qgis/QGIS/pull/34760)

[↑ come back ↑](#changelog-314-pi)

## Relation widget force suppress popup
- author: elpaso
- merged: 2020-02-27T07:11:45Z
- milestone: 3.14.0
- tags: FeatureForms
- PR: [34654](https://github.com/qgis/QGIS/pull/34654)

[↑ come back ↑](#changelog-314-pi)

## New standalone console tool for running processing algorithms
- author: nyalldawson
- merged: 2020-04-15T08:20:28Z
- milestone: 3.14.0
- tags: FeatureProcessing
- PR: [34617](https://github.com/qgis/QGIS/pull/34617)

[↑ come back ↑](#changelog-314-pi)

## "New parameter type for datetime (or date, or time)
 values"
- author: nyalldawson
- merged: 2020-02-24T07:23:42Z
- milestone: 3.14.0
- tags: FeatureProcessing
- PR: [34610](https://github.com/qgis/QGIS/pull/34610)

[↑ come back ↑](#changelog-314-pi)

## QGIS Project temporal settings
- author: Samweli
- merged: 2020-03-06T21:43:14Z
- milestone: 3.14.0
- PR: [34590](https://github.com/qgis/QGIS/pull/34590)

[↑ come back ↑](#changelog-314-pi)

## Make CRS controlable by a variable
- author: roya0045
- merged: 2020-02-22T20:50:56Z
- milestone: 3.14.0
- tags: FeatureNeeds DocumentationPrint Layouts
- PR: [34547](https://github.com/qgis/QGIS/pull/34547)

[↑ come back ↑](#changelog-314-pi)

## mesh simplification
- author: vcloarec
- merged: 2020-02-25T07:05:50Z
- milestone: 3.14.0
- tags: ChangelogFeatureMeshNeeds Documentation
- PR: [34532](https://github.com/qgis/QGIS/pull/34532)

[↑ come back ↑](#changelog-314-pi)

## WMS-T layers temporal constrains support
- author: Samweli
- merged: 2020-03-05T08:41:37Z
- milestone: 3.14.0
- PR: [34497](https://github.com/qgis/QGIS/pull/34497)

[↑ come back ↑](#changelog-314-pi)

## Temporal API
- author: Samweli
- merged: 2020-02-24T03:48:40Z
- PR: [34040](https://github.com/qgis/QGIS/pull/34040)

[↑ come back ↑](#changelog-314-pi)

## New snapping modes: Centroid and middle of a segment (midpoint)

- author: lbartoletti
- merged: 2020-03-02T08:02:36Z
- milestone: 3.14.0
- tags: DigitizingFeatureNeeds DocumentationSquash!
- PR: [33622](https://github.com/qgis/QGIS/pull/33622)

[↑ come back ↑](#changelog-314-pi)

## Show 'template layer' constraints info in the Refactor fields algorithm's UI
- author: gacarrillor
- merged: 2020-03-18T06:10:07Z
- milestone: 3.14.0
- tags: ChangelogFeatureNeeds Documentation
- PR: [31387](https://github.com/qgis/QGIS/pull/31387)