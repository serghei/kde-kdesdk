#################################################
#
#  (C) 2010-2012 Serghei Amelian
#  serghei (DOT) amelian (AT) gmail.com
#
#  Improvements and feedback are welcome
#
#  This file is released under GPL >= 2
#
#################################################

kde_install_icons(
  umbrello_diagram_activity umbrello_diagram_class
  umbrello_diagram_collaboration umbrello_diagram_component
  umbrello_diagram_deployment umbrello_diagram_sequence
  umbrello_diagram_state umbrello_diagram_usecase
  umbrello_diagram_entityrelationship )


install( FILES
    actor.png aggregation.png align_left.png align_right.png
    align_top.png align_bottom.png align_vert_middle.png
    align_hori_middle.png align_vert_distribute.png
    align_hori_distribute.png anchor.png andline.png arrow.png
    association.png choice-rhomb.png choice-round.png component.png
    composition.png containment.png CVglobal_meth.png CVglobal_var.png
    CVimplementation_meth.png CVimplementation_signal.png
    CVimplementation_slot.png CVimplementation_var.png CVnamespace.png
    CVprivate_meth.png CVprivate_signal.png CVprivate_slot.png
    CVprivate_var.png CVprotected_meth.png CVprotected_signal.png
    CVprotected_slot.png CVprotected_var.png CVpublic_meth.png
    CVpublic_signal.png CVpublic_slot.png CVpublic_var.png CVstruct.png
    deep-history.png shallow-history.png dependency.png end_state.png
    generalisation.png initial_state.png interface.png join.png
    junction.png datatype.png enum.png message-synchronous.png
    message-asynchronous.png note.png object.png startlogo.png
    template.png text.png class.png uniassociation.png usecase.png
    branch.png fork.png state-fork.png package.png subsystem.png
    artifact.png box.png node.png entity.png relationship.png
    cursor-actor.png cursor-andline.png cursor-choice-rhomb.png
    cursor-choice-round.png cursor-deep-history.png cursor-join.png
    cursor-junction.png cursor-shallow-history.png cursor-state-fork.png
    cursor-usecase.png cursor-initial_state.png cursor-package.png
    cursor-aggregation.png cursor-component.png cursor-containment.png
    cursor-interface.png cursor-datatype.png cursor-enum.png
    cursor-text.png cursor-anchor.png cursor-composition.png
    cursor-message-asynchronous.png cursor-class.png cursor-artifact.png
    cursor-dependency.png cursor-message-synchronous.png
    cursor-uniassociation.png cursor-association.png cursor-end_state.png
    cursor-node.png cursor-box.png cursor-fork.png cursor-note.png
    cursor-branch.png cursor-generalisation.png cursor-object.png
    cursor-entity.png cursor-relationship.png
  DESTINATION ${DATA_INSTALL_DIR}/umbrello/pics )
