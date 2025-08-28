let
    Source = Table.FromRows(Json.Document(Binary.Decompress(Binary.FromText("i45WMlDSUSouLUgtUsjJz0tXyE0tLk5MT8UUUaCtkFKsTrSSIdAt6fn5KUmVEL4RkF9SVKlQkpFZrJCYnpiZBxY2BgpnliiU5xdlF4MFTIACKfmpxQqZJfZgAdPB4qlYAA==", BinaryEncoding.Base64), Compression.Deflate)), let _t = ((type nullable text) meta [Serialized.Text = true]) in type table [index = _t, message = _t]),
    #"Changed Type" = Table.TransformColumnTypes(Source,{{"index", Int64.Type}})
in
    #"Changed Type"
