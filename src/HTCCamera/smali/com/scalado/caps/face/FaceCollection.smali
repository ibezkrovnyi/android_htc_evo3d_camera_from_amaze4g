.class public Lcom/scalado/caps/face/FaceCollection;
.super Ljava/lang/Object;
.source "FaceCollection.java"


# static fields
.field private static final INCREMENT:I = 0xa


# instance fields
.field private actualSize:I

.field private faces:[Lcom/scalado/caps/face/Face;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/scalado/caps/face/FaceCollection;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/scalado/caps/face/FaceCollection;->actualSize:I

    new-array v1, p1, [Lcom/scalado/caps/face/Face;

    iput-object v1, p0, Lcom/scalado/caps/face/FaceCollection;->faces:[Lcom/scalado/caps/face/Face;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    iput v3, p0, Lcom/scalado/caps/face/FaceCollection;->actualSize:I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/scalado/caps/face/FaceCollection;->faces:[Lcom/scalado/caps/face/Face;

    new-instance v2, Lcom/scalado/caps/face/Face;

    invoke-direct {v2}, Lcom/scalado/caps/face/Face;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addFace(Lcom/scalado/caps/face/Face;)V
    .locals 3

    iget v0, p0, Lcom/scalado/caps/face/FaceCollection;->actualSize:I

    iget-object v1, p0, Lcom/scalado/caps/face/FaceCollection;->faces:[Lcom/scalado/caps/face/Face;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/scalado/caps/face/FaceCollection;->increaseSize(I)V

    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/face/FaceCollection;->faces:[Lcom/scalado/caps/face/Face;

    iget v1, p0, Lcom/scalado/caps/face/FaceCollection;->actualSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/scalado/caps/face/FaceCollection;->actualSize:I

    aput-object p1, v0, v1

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/scalado/caps/face/FaceCollection;->faces:[Lcom/scalado/caps/face/Face;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/scalado/caps/face/FaceCollection;->actualSize:I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/scalado/caps/face/FaceCollection;->faces:[Lcom/scalado/caps/face/Face;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/scalado/caps/face/Face;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getFaceArray()[Lcom/scalado/caps/face/Face;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/face/FaceCollection;->faces:[Lcom/scalado/caps/face/Face;

    return-object v0
.end method

.method public getFaceAt(I)Lcom/scalado/caps/face/Face;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/scalado/caps/face/FaceCollection;->actualSize:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index out of bounds!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/scalado/caps/face/FaceCollection;->faces:[Lcom/scalado/caps/face/Face;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getMaxSize()I
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/face/FaceCollection;->faces:[Lcom/scalado/caps/face/Face;

    array-length v0, v0

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/face/FaceCollection;->actualSize:I

    return v0
.end method

.method protected increaseSize(I)V
    .locals 3

    iget-object v2, p0, Lcom/scalado/caps/face/FaceCollection;->faces:[Lcom/scalado/caps/face/Face;

    array-length v2, v2

    add-int/2addr v2, p1

    new-array v1, v2, [Lcom/scalado/caps/face/Face;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/scalado/caps/face/FaceCollection;->faces:[Lcom/scalado/caps/face/Face;

    array-length v2, v2

    add-int/2addr v2, p1

    if-lt v0, v2, :cond_0

    iput-object v1, p0, Lcom/scalado/caps/face/FaceCollection;->faces:[Lcom/scalado/caps/face/Face;

    return-void

    :cond_0
    iget-object v2, p0, Lcom/scalado/caps/face/FaceCollection;->faces:[Lcom/scalado/caps/face/Face;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/scalado/caps/face/FaceCollection;->faces:[Lcom/scalado/caps/face/Face;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/scalado/caps/face/Face;

    invoke-direct {v2}, Lcom/scalado/caps/face/Face;-><init>()V

    aput-object v2, v1, v0

    goto :goto_1
.end method

.method protected setActualSize(I)V
    .locals 0

    iput p1, p0, Lcom/scalado/caps/face/FaceCollection;->actualSize:I

    return-void
.end method
