# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
	plugins:
		associatedfiles:
			# The paths for the associated files.
			associatedFilesPath: 'associated-files'

			# Whether to use relative base paths for the document. This would
			# use associated-files/subfolder/myarticle/image.jpg instead of
			# associated-files/myarticle/image.jpg.
			useRelativeBase: false
	collections:
		pages: ->
			@getCollection("html").findAllLive({isPage:true})
		posts: ->
			@getCollection("html").findAllLive({relativeOutDirPath: 'posts'})			
}

# Export the DocPad Configuration
module.exports = docpadConfig