import json
words_array = json.load(open("SwiftJsonDemo/words_array.json", 'r'))
print(len(words_array))
words_idf = json.load(open("SwiftJsonDemo/words_idf.json", 'r'))
print(len(words_idf["idf"]))
