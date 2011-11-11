.class public Lcom/scalado/caps/facerecognition/Cluster;
.super Ljava/lang/Object;
.source "Cluster.java"


# instance fields
.field private centralFace:Lcom/scalado/caps/face/Face;

.field private database:Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;

.field private index:I

.field private integrity:I

.field private numFaces:I


# direct methods
.method constructor <init>(ILcom/scalado/caps/face/Face;IILcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/scalado/caps/facerecognition/Cluster;->numFaces:I

    iput-object v1, p0, Lcom/scalado/caps/facerecognition/Cluster;->centralFace:Lcom/scalado/caps/face/Face;

    iput v0, p0, Lcom/scalado/caps/facerecognition/Cluster;->integrity:I

    iput v0, p0, Lcom/scalado/caps/facerecognition/Cluster;->index:I

    iput-object v1, p0, Lcom/scalado/caps/facerecognition/Cluster;->database:Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;

    iput p1, p0, Lcom/scalado/caps/facerecognition/Cluster;->numFaces:I

    iput-object p2, p0, Lcom/scalado/caps/facerecognition/Cluster;->centralFace:Lcom/scalado/caps/face/Face;

    iput p3, p0, Lcom/scalado/caps/facerecognition/Cluster;->integrity:I

    iput p4, p0, Lcom/scalado/caps/facerecognition/Cluster;->index:I

    iput-object p5, p0, Lcom/scalado/caps/facerecognition/Cluster;->database:Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;

    return-void
.end method


# virtual methods
.method public final getCentralFace()Lcom/scalado/caps/face/Face;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/facerecognition/Cluster;->centralFace:Lcom/scalado/caps/face/Face;

    return-object v0
.end method

.method public final getFaces()[Lcom/scalado/caps/facerecognition/ClusterFaceData;
    .locals 3

    iget-object v1, p0, Lcom/scalado/caps/facerecognition/Cluster;->database:Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;

    iget v2, p0, Lcom/scalado/caps/facerecognition/Cluster;->index:I

    invoke-virtual {v1, v2}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->getFacesInCluster(I)[Lcom/scalado/caps/facerecognition/ClusterFaceData;

    move-result-object v0

    return-object v0
.end method

.method final getIndex()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/facerecognition/Cluster;->index:I

    return v0
.end method

.method public final getIntegrity()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/facerecognition/Cluster;->integrity:I

    return v0
.end method

.method public final getNumberOfFaces()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/facerecognition/Cluster;->numFaces:I

    return v0
.end method
