.class Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardStillFaceRecognizer;
.super Lcom/scalado/caps/PeerBase;
.source "FaceRecognizerFactory.java"

# interfaces
.implements Lcom/scalado/caps/facerecognition/StillFaceRecognizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/facerecognition/FaceRecognizerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StandardStillFaceRecognizer"
.end annotation


# instance fields
.field private faceDataBase:Lcom/scalado/caps/facerecognition/FaceDataBase;


# direct methods
.method private constructor <init>(Lcom/scalado/caps/facerecognition/FaceDataBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    iput-object p1, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardStillFaceRecognizer;->faceDataBase:Lcom/scalado/caps/facerecognition/FaceDataBase;

    invoke-direct {p0, p1}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardStillFaceRecognizer;->nativeCreate(Lcom/scalado/caps/facerecognition/FaceDataBase;)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/caps/facerecognition/FaceDataBase;Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardStillFaceRecognizer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardStillFaceRecognizer;-><init>(Lcom/scalado/caps/facerecognition/FaceDataBase;)V

    return-void
.end method

.method private native nativeCreate(Lcom/scalado/caps/facerecognition/FaceDataBase;)I
.end method

.method private native nativeRecognizeCluster(II[Lcom/scalado/caps/facerecognition/RecognitionResult;)I
.end method

.method private native nativeRecognizePerson(Lcom/scalado/base/Image;Lcom/scalado/caps/face/Face;Lcom/scalado/caps/facerecognition/RecognitionResult;)I
.end method

.method private native nativeRecognizePersonByProbability(Lcom/scalado/base/Image;Lcom/scalado/caps/face/Face;I[Lcom/scalado/caps/facerecognition/RecognitionResult;)I
.end method


# virtual methods
.method public recognizeCluster(Lcom/scalado/caps/facerecognition/Cluster;I)[Lcom/scalado/caps/facerecognition/RecognitionResult;
    .locals 5

    new-array v2, p2, [Lcom/scalado/caps/facerecognition/RecognitionResult;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_0

    invoke-virtual {p1}, Lcom/scalado/caps/facerecognition/Cluster;->getIndex()I

    move-result v3

    invoke-direct {p0, v3, p2, v2}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardStillFaceRecognizer;->nativeRecognizeCluster(II[Lcom/scalado/caps/facerecognition/RecognitionResult;)I

    return-object v2

    :cond_0
    invoke-static {}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory;->access$0()Lcom/scalado/caps/facerecognition/Person;

    move-result-object v1

    new-instance v3, Lcom/scalado/caps/facerecognition/RecognitionResult;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/scalado/caps/facerecognition/RecognitionResult;-><init>(Lcom/scalado/caps/facerecognition/Person;I)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public recognizePerson(Lcom/scalado/base/Image;Lcom/scalado/caps/face/Face;)Lcom/scalado/caps/facerecognition/RecognitionResult;
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_1
    invoke-virtual {p2}, Lcom/scalado/caps/face/Face;->getFaceRect()Lcom/scalado/base/Rect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_2

    invoke-virtual {p2}, Lcom/scalado/caps/face/Face;->getFaceRect()Lcom/scalado/base/Rect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v2

    const/16 v3, 0x4c

    if-ge v2, v3, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Face is too small."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual {p2}, Lcom/scalado/caps/face/Face;->getLeftEyeRect()Lcom/scalado/base/Rect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lcom/scalado/caps/face/Face;->getLeftEyeRect()Lcom/scalado/base/Rect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lcom/scalado/caps/face/Face;->getRightEyeRect()Lcom/scalado/base/Rect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lcom/scalado/caps/face/Face;->getRightEyeRect()Lcom/scalado/base/Rect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Face is missing a pair of eyes."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory;->access$0()Lcom/scalado/caps/facerecognition/Person;

    move-result-object v0

    new-instance v1, Lcom/scalado/caps/facerecognition/RecognitionResult;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/scalado/caps/facerecognition/RecognitionResult;-><init>(Lcom/scalado/caps/facerecognition/Person;I)V

    invoke-direct {p0, p1, p2, v1}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardStillFaceRecognizer;->nativeRecognizePerson(Lcom/scalado/base/Image;Lcom/scalado/caps/face/Face;Lcom/scalado/caps/facerecognition/RecognitionResult;)I

    return-object v1
.end method

.method public recognizePersonByProbability(Lcom/scalado/base/Image;Lcom/scalado/caps/face/Face;I)[Lcom/scalado/caps/facerecognition/RecognitionResult;
    .locals 6

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_1
    invoke-virtual {p2}, Lcom/scalado/caps/face/Face;->getFaceRect()Lcom/scalado/base/Rect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v4

    const/16 v5, 0x40

    if-lt v4, v5, :cond_2

    invoke-virtual {p2}, Lcom/scalado/caps/face/Face;->getFaceRect()Lcom/scalado/base/Rect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v4

    const/16 v5, 0x4c

    if-ge v4, v5, :cond_3

    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Face is too small!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-virtual {p2}, Lcom/scalado/caps/face/Face;->getLeftEyeRect()Lcom/scalado/base/Rect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Lcom/scalado/caps/face/Face;->getLeftEyeRect()Lcom/scalado/base/Rect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Lcom/scalado/caps/face/Face;->getRightEyeRect()Lcom/scalado/base/Rect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Lcom/scalado/caps/face/Face;->getRightEyeRect()Lcom/scalado/base/Rect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Face is missing a pair of eyes!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    iget-object v4, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardStillFaceRecognizer;->faceDataBase:Lcom/scalado/caps/facerecognition/FaceDataBase;

    invoke-interface {v4}, Lcom/scalado/caps/facerecognition/FaceDataBase;->getNumPersons()I

    move-result v1

    if-le p3, v1, :cond_6

    move p3, v1

    :cond_6
    new-array v3, p3, [Lcom/scalado/caps/facerecognition/RecognitionResult;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_7

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardStillFaceRecognizer;->nativeRecognizePersonByProbability(Lcom/scalado/base/Image;Lcom/scalado/caps/face/Face;I[Lcom/scalado/caps/facerecognition/RecognitionResult;)I

    return-object v3

    :cond_7
    invoke-static {}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory;->access$0()Lcom/scalado/caps/facerecognition/Person;

    move-result-object v2

    new-instance v4, Lcom/scalado/caps/facerecognition/RecognitionResult;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/scalado/caps/facerecognition/RecognitionResult;-><init>(Lcom/scalado/caps/facerecognition/Person;I)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
