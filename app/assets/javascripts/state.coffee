# #
# # state.coffee: update browser history
# #
# # Copyright 2013 Canopy Canopy Canopy, Inc.
# #
# class Alongslide::State

#   constructor: (options = {}) ->

#     History = window.History

#     @documentTitle = document.getElementsByTagName('title')[0].innerHTML
#     @panelNames    = options.panelNames
#     @flowNames     = options.flowNames
#     @panelIndices  = options.panelIndices
#     @flowIndices   = options.flowIndices
#     @hashIndices   = []
#     @hash          = '#'

#   setIndices:(arr) ->
#     @hashIndices = arr
#     # Manually pushing 'digital-project-context' to sections
#     #
#     # @flowIndices.push('digital-project-context')

#   rewindIndex:(state) ->
#     state.index -= 1
#     @updateLocation(state);

#   updateLocation:(state = {})->

#     if !History.enabled then return

#     # Account for layouts that only have one section, as the `position`s
#     # won't be in the indices array.
#     #
#     if !@hashIndices[state.index] and state.index > -1
#       @rewindIndex(state)

#     # Exit if the indices array is empty
#     #
#     else if state.index < 0
#       return

#     # Update the hash
#     #
#     else if @hashIndices[state.index]

#       History.replaceState null, @documentTitle, @hash + @hashIndices[state.index]

#       data =
#         index       : state.index
#         sectionHash : @flowIndices[state.index]
#         panels      : @panelIndices
#         sections    : @flowIndices

#       $(document).triggerHandler 'alongslide.stateChange', data
