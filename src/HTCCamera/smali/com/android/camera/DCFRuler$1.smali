.class final Lcom/android/camera/DCFRuler$1;
.super Ljava/lang/Object;
.source "DCFRuler.java"

# interfaces
.implements Lcom/android/camera/FileUtility$FileEnumerationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DCFRuler;->getLastDirectoryNumber(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dirNameLength:I

.field final synthetic val$dirNameSuffixLength:I

.field final synthetic val$dirSuffix:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/android/camera/DCFRuler$1;->val$dirNameLength:I

    iput p2, p0, Lcom/android/camera/DCFRuler$1;->val$dirNameSuffixLength:I

    iput-object p3, p0, Lcom/android/camera/DCFRuler$1;->val$dirSuffix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 10

    const/16 v9, 0x30

    const/16 v8, 0x9

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/android/camera/DCFRuler$1;->val$dirNameLength:I

    if-eq v4, v5, :cond_0

    move v4, v6

    :goto_0
    return v4

    :cond_0
    iget v4, p0, Lcom/android/camera/DCFRuler$1;->val$dirNameLength:I

    iget v5, p0, Lcom/android/camera/DCFRuler$1;->val$dirNameSuffixLength:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/DCFRuler$1;->val$dirNameLength:I

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/DCFRuler$1;->val$dirSuffix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int v1, v4, v9

    if-ltz v1, :cond_2

    if-gt v1, v8, :cond_2

    mul-int/lit8 v2, v1, 0x64

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int v1, v4, v9

    if-ltz v1, :cond_3

    if-gt v1, v8, :cond_3

    mul-int/lit8 v4, v1, 0xa

    add-int/2addr v2, v4

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int v1, v4, v9

    if-ltz v1, :cond_4

    if-gt v1, v8, :cond_4

    add-int/2addr v2, v1

    check-cast p2, [Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    aget-object p0, v3, v7

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v2, v4, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x3e7

    if-ne v2, v4, :cond_5

    move v4, v7

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_0

    :cond_4
    move v4, v6

    goto :goto_0

    :cond_5
    move v4, v6

    goto :goto_0
.end method
