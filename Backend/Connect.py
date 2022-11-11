
import firebase_admin
from firebase_admin import credentials ,firestore

cred = credentials.Certificate(
    "Backend\docnet-alpha-firebase-adminsdk-oxdy6-ea504dca30.json")
firebase_admin.initialize_app(cred)

db = firebase_admin.firestore.client()

# Path: Backend\Connect.py



def fireWrite(Ref,Data,id):
    Ref.document(id).set(Data)

def fireRead(Ref,id):
    doc_ref = Ref.document(id)
    doc = doc_ref.get()
    return doc.to_dict()

def fireUpdate(Ref,Data,id):
    Ref.document(id).update(Data)

print(fireRead(db.collection(u'Users'),u'1'))
