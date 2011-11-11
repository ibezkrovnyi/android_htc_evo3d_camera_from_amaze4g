.class public Lcom/scalado/caps/facerecognition/FaceRecognizerFactory;
.super Ljava/lang/Object;
.source "FaceRecognizerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;,
        Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPerson;,
        Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPersonId;,
        Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardStillFaceRecognizer;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/scalado/caps/facerecognition/Person;
    .locals 1

    invoke-static {}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory;->createPerson()Lcom/scalado/caps/facerecognition/Person;

    move-result-object v0

    return-object v0
.end method

.method public static createFaceDataBase(Lcom/scalado/base/Buffer;Lcom/scalado/base/Buffer;I)Lcom/scalado/caps/facerecognition/FaceDataBase;
    .locals 2

    new-instance v0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;-><init>(Lcom/scalado/base/Buffer;Lcom/scalado/base/Buffer;ILcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;)V

    return-object v0
.end method

.method public static createFaceDataBase(Ljava/lang/String;Ljava/lang/String;I)Lcom/scalado/caps/facerecognition/FaceDataBase;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;)V

    return-object v0
.end method

.method private static createPerson()Lcom/scalado/caps/facerecognition/Person;
    .locals 2

    new-instance v0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPerson;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPerson;-><init>(Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPerson;)V

    return-object v0
.end method

.method public static createStillFaceRecognizer(Lcom/scalado/caps/facerecognition/FaceDataBase;)Lcom/scalado/caps/facerecognition/StillFaceRecognizer;
    .locals 2

    new-instance v0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardStillFaceRecognizer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardStillFaceRecognizer;-><init>(Lcom/scalado/caps/facerecognition/FaceDataBase;Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardStillFaceRecognizer;)V

    return-object v0
.end method
