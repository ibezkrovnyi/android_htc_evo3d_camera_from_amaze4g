.class Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPerson;
.super Lcom/scalado/caps/PeerBase;
.source "FaceRecognizerFactory.java"

# interfaces
.implements Lcom/scalado/caps/facerecognition/Person;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/facerecognition/FaceRecognizerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StandardPerson"
.end annotation


# instance fields
.field private maxNumFaces:I

.field private numFaces:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    iput v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPerson;->numFaces:I

    iput v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPerson;->maxNumFaces:I

    invoke-direct {p0}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPerson;->nativeCreate()I

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPerson;)V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPerson;-><init>()V

    return-void
.end method

.method private native nativeAddFace(Lcom/scalado/base/Image;Lcom/scalado/caps/face/Face;)I
.end method

.method private native nativeCreate()I
.end method

.method private native nativeGetIdentityKey([B)I
.end method

.method private native nativeGetMaxNumFaces()I
.end method

.method private native nativeGetNumFaces()I
.end method

.method private native nativeGetText()Ljava/lang/String;
.end method

.method private native nativeRemoveFace(I)I
.end method

.method private native nativeSetText(Ljava/lang/String;I)I
.end method


# virtual methods
.method public addFace(Lcom/scalado/base/Image;Lcom/scalado/caps/face/Face;)I
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p2}, Lcom/scalado/caps/face/Face;->getFaceRect()Lcom/scalado/base/Rect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/scalado/caps/face/Face;->getFaceRect()Lcom/scalado/base/Rect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v0

    const/16 v1, 0x4c

    if-ge v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Face is too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p2}, Lcom/scalado/caps/face/Face;->getLeftEyeRect()Lcom/scalado/base/Rect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/scalado/caps/face/Face;->getLeftEyeRect()Lcom/scalado/base/Rect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/scalado/caps/face/Face;->getRightEyeRect()Lcom/scalado/base/Rect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/scalado/caps/face/Face;->getRightEyeRect()Lcom/scalado/base/Rect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Face is missing a pair of eyes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPerson;->nativeAddFace(Lcom/scalado/base/Image;Lcom/scalado/caps/face/Face;)I

    move-result v0

    return v0
.end method

.method public getIdentityKey()Lcom/scalado/caps/facerecognition/PersonId;
    .locals 3

    const/16 v1, 0x10

    new-array v0, v1, [B

    invoke-direct {p0, v0}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPerson;->nativeGetIdentityKey([B)I

    new-instance v1, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPersonId;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPersonId;-><init>([BLcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPersonId;)V

    return-object v1
.end method

.method public getMaxNumFaces()I
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPerson;->nativeGetMaxNumFaces()I

    iget v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPerson;->maxNumFaces:I

    return v0
.end method

.method public getNumFaces()I
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPerson;->nativeGetNumFaces()I

    iget v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPerson;->numFaces:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPerson;->nativeGetText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeFace(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPerson;->nativeRemoveFace(I)I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPerson;->nativeSetText(Ljava/lang/String;I)I

    return-void
.end method
