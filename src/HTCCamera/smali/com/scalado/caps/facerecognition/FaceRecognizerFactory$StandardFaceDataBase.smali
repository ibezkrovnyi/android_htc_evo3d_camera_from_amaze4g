.class Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;
.super Lcom/scalado/caps/PeerBase;
.source "FaceRecognizerFactory.java"

# interfaces
.implements Lcom/scalado/caps/facerecognition/FaceDataBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/facerecognition/FaceRecognizerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StandardFaceDataBase"
.end annotation


# instance fields
.field private clusterCount:I

.field private clusteredFacesCount:I

.field private hm:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/scalado/caps/face/Face;",
            ">;"
        }
    .end annotation
.end field

.field private maxNumPersons:I

.field private numPersons:I


# direct methods
.method private constructor <init>(Lcom/scalado/base/Buffer;Lcom/scalado/base/Buffer;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    iput v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->numPersons:I

    iput v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->maxNumPersons:I

    iput v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->clusterCount:I

    iput v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->clusteredFacesCount:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->hm:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->nativeCreateFromBuffers(Lcom/scalado/base/Buffer;Lcom/scalado/base/Buffer;I)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/base/Buffer;Lcom/scalado/base/Buffer;ILcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;-><init>(Lcom/scalado/base/Buffer;Lcom/scalado/base/Buffer;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    iput v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->numPersons:I

    iput v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->maxNumPersons:I

    iput v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->clusterCount:I

    iput v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->clusteredFacesCount:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->hm:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->nativeCreateFromFiles(Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private native nativeAddFaceToClusterize(Lcom/scalado/base/Image;Lcom/scalado/caps/face/Face;)I
.end method

.method private native nativeClearClusteringData()I
.end method

.method private native nativeClusterize()I
.end method

.method private native nativeCreateFromBuffers(Lcom/scalado/base/Buffer;Lcom/scalado/base/Buffer;I)I
.end method

.method private native nativeCreateFromFiles(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private native nativeCreatePerson(Lcom/scalado/caps/facerecognition/Person;)I
.end method

.method private native nativeGetClusterCount()I
.end method

.method private native nativeGetClusteredFacesCount()I
.end method

.method private native nativeGetClusters([I[I[I)I
.end method

.method private native nativeGetMaxNumPersons()I
.end method

.method private native nativeGetNumPersons()I
.end method

.method private native nativeGetPerson([BLcom/scalado/caps/facerecognition/Person;)I
.end method

.method private native nativeGetPersons([Lcom/scalado/caps/facerecognition/Person;)I
.end method

.method private native nativeRemovePerson(Lcom/scalado/caps/facerecognition/Person;)I
.end method


# virtual methods
.method public addFaceToClusterize(Lcom/scalado/base/Image;Lcom/scalado/caps/face/Face;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->nativeAddFaceToClusterize(Lcom/scalado/base/Image;Lcom/scalado/caps/face/Face;)I

    move-result v0

    iget-object v1, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->hm:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearClusteringData()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->hm:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->nativeClearClusteringData()I

    return-void
.end method

.method public clusterize()V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->nativeClusterize()I

    return-void
.end method

.method public createPerson()Lcom/scalado/caps/facerecognition/Person;
    .locals 2

    new-instance v0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPerson;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPerson;-><init>(Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardPerson;)V

    invoke-direct {p0, v0}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->nativeCreatePerson(Lcom/scalado/caps/facerecognition/Person;)I

    return-object v0
.end method

.method public getClusterCount()I
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->nativeGetClusterCount()I

    iget v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->clusterCount:I

    return v0
.end method

.method public getClusteredFacesCount()I
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->nativeGetClusteredFacesCount()I

    iget v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->clusteredFacesCount:I

    return v0
.end method

.method public getClusters()[Lcom/scalado/caps/facerecognition/Cluster;
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->getClusterCount()I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->clusterCount:I

    iget v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->clusterCount:I

    new-array v7, v0, [Lcom/scalado/caps/facerecognition/Cluster;

    iget v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->clusterCount:I

    new-array v9, v0, [I

    iget v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->clusterCount:I

    new-array v6, v0, [I

    iget v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->clusterCount:I

    new-array v8, v0, [I

    invoke-direct {p0, v9, v6, v8}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->nativeGetClusters([I[I[I)I

    const/4 v4, 0x0

    :goto_0
    iget v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->clusterCount:I

    if-lt v4, v0, :cond_0

    return-object v7

    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->hm:Ljava/util/HashMap;

    aget v1, v6, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/caps/face/Face;

    new-instance v0, Lcom/scalado/caps/facerecognition/Cluster;

    aget v1, v9, v4

    aget v3, v8, v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/scalado/caps/facerecognition/Cluster;-><init>(ILcom/scalado/caps/face/Face;IILcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;)V

    aput-object v0, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method getFacesInCluster(I)[Lcom/scalado/caps/facerecognition/ClusterFaceData;
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->getClusters()[Lcom/scalado/caps/facerecognition/Cluster;

    move-result-object v1

    aget-object v7, v1, p1

    invoke-virtual {v7}, Lcom/scalado/caps/facerecognition/Cluster;->getNumberOfFaces()I

    move-result v5

    new-array v0, v5, [Lcom/scalado/caps/facerecognition/ClusterFaceData;

    new-array v3, v5, [I

    new-array v6, v5, [I

    invoke-virtual {p0, p1, v3, v6}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->nativeGetFacesInCluster(I[I[I)I

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    return-object v0

    :cond_0
    iget-object v7, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->hm:Ljava/util/HashMap;

    aget v8, v3, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/caps/face/Face;

    new-instance v7, Lcom/scalado/caps/facerecognition/ClusterFaceData;

    aget v8, v6, v4

    invoke-direct {v7, v2, v8}, Lcom/scalado/caps/facerecognition/ClusterFaceData;-><init>(Lcom/scalado/caps/face/Face;I)V

    aput-object v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getMaxNumPersons()I
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->nativeGetMaxNumPersons()I

    iget v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->maxNumPersons:I

    return v0
.end method

.method public getNumPersons()I
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->nativeGetNumPersons()I

    iget v0, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->numPersons:I

    return v0
.end method

.method public getPerson(Lcom/scalado/caps/facerecognition/PersonId;)Lcom/scalado/caps/facerecognition/Person;
    .locals 2

    invoke-static {}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory;->access$0()Lcom/scalado/caps/facerecognition/Person;

    move-result-object v0

    invoke-interface {p1}, Lcom/scalado/caps/facerecognition/PersonId;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->nativeGetPerson([BLcom/scalado/caps/facerecognition/Person;)I

    return-object v0
.end method

.method public getPersons()[Lcom/scalado/caps/facerecognition/Person;
    .locals 3

    invoke-virtual {p0}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->getNumPersons()I

    move-result v2

    iput v2, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->numPersons:I

    iget v2, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->numPersons:I

    new-array v1, v2, [Lcom/scalado/caps/facerecognition/Person;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->numPersons:I

    if-lt v0, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->nativeGetPersons([Lcom/scalado/caps/facerecognition/Person;)I

    return-object v1

    :cond_0
    invoke-static {}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory;->access$0()Lcom/scalado/caps/facerecognition/Person;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public native nativeGetFacesInCluster(I[I[I)I
.end method

.method public removePerson(Lcom/scalado/caps/facerecognition/Person;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/facerecognition/FaceRecognizerFactory$StandardFaceDataBase;->nativeRemovePerson(Lcom/scalado/caps/facerecognition/Person;)I

    return-void
.end method
