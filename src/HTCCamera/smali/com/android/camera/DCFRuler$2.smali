.class final Lcom/android/camera/DCFRuler$2;
.super Ljava/lang/Object;
.source "DCFRuler.java"

# interfaces
.implements Lcom/android/camera/FileUtility$FileEnumerationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DCFRuler;->getLastImageFileNumber(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fileExtension:Ljava/lang/String;

.field final synthetic val$fileTag:Ljava/lang/String;

.field final synthetic val$imageFileNameLength:I

.field final synthetic val$imageFileTagLength:I

.field final synthetic val$jpsExtension:Ljava/lang/String;

.field final synthetic val$mpoExtension:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileNameLength:I

    iput p2, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileTagLength:I

    iput-object p3, p0, Lcom/android/camera/DCFRuler$2;->val$fileTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera/DCFRuler$2;->val$fileExtension:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/camera/DCFRuler$2;->val$jpsExtension:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/camera/DCFRuler$2;->val$mpoExtension:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 11

    const/4 v10, 0x4

    const/16 v9, 0x30

    const/16 v8, 0x9

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileNameLength:I

    if-eq v4, v5, :cond_0

    move v4, v6

    :goto_0
    return v4

    :cond_0
    iget v4, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileTagLength:I

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/DCFRuler$2;->val$fileTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileNameLength:I

    sub-int/2addr v4, v10

    iget v5, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileNameLength:I

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/DCFRuler$2;->val$fileExtension:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileNameLength:I

    sub-int/2addr v4, v10

    iget v5, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileNameLength:I

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/DCFRuler$2;->val$jpsExtension:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileNameLength:I

    sub-int/2addr v4, v10

    iget v5, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileNameLength:I

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/DCFRuler$2;->val$mpoExtension:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v6

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileTagLength:I

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int v1, v4, v9

    if-ltz v1, :cond_4

    if-gt v1, v8, :cond_4

    mul-int/lit16 v2, v1, 0x3e8

    iget v4, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileTagLength:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int v1, v4, v9

    if-ltz v1, :cond_5

    if-gt v1, v8, :cond_5

    mul-int/lit8 v4, v1, 0x64

    add-int/2addr v2, v4

    iget v4, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileTagLength:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int v1, v4, v9

    if-ltz v1, :cond_6

    if-gt v1, v8, :cond_6

    mul-int/lit8 v4, v1, 0xa

    add-int/2addr v2, v4

    iget v4, p0, Lcom/android/camera/DCFRuler$2;->val$imageFileTagLength:I

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int v1, v4, v9

    if-ltz v1, :cond_7

    if-gt v1, v8, :cond_7

    add-int/2addr v2, v1

    check-cast p2, [Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    aget-object p0, v3, v7

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v2, v4, :cond_8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x270f

    if-ne v2, v4, :cond_8

    move v4, v7

    goto/16 :goto_0

    :cond_4
    move v4, v6

    goto/16 :goto_0

    :cond_5
    move v4, v6

    goto/16 :goto_0

    :cond_6
    move v4, v6

    goto/16 :goto_0

    :cond_7
    move v4, v6

    goto/16 :goto_0

    :cond_8
    move v4, v6

    goto/16 :goto_0
.end method
