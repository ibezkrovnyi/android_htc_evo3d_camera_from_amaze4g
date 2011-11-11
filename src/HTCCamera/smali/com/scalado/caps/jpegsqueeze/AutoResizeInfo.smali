.class public Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;
.super Ljava/lang/Object;
.source "AutoResizeInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;
    }
.end annotation


# instance fields
.field private action:I

.field private colorspacing:I

.field private desiredFileSize:I

.field private maxImageSize:Lcom/scalado/base/Size;

.field private minEncodingQuality:F

.field private minImageSize:Lcom/scalado/base/Size;


# direct methods
.method public constructor <init>(ILcom/scalado/base/Size;Lcom/scalado/base/Size;Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;FLcom/scalado/caps/codec/Colorspacing;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct/range {p0 .. p6}, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->validateParameters(ILcom/scalado/base/Size;Lcom/scalado/base/Size;Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;FLcom/scalado/caps/codec/Colorspacing;)V

    iput p1, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->desiredFileSize:I

    iput-object p2, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->maxImageSize:Lcom/scalado/base/Size;

    iput-object p3, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->minImageSize:Lcom/scalado/base/Size;

    invoke-virtual {p4}, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;->value()I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->action:I

    iput p5, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->minEncodingQuality:F

    invoke-virtual {p6}, Lcom/scalado/caps/codec/Colorspacing;->value()I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->colorspacing:I

    return-void
.end method

.method private validateParameters(ILcom/scalado/base/Size;Lcom/scalado/base/Size;F)V
    .locals 4

    const-string v2, "Illegal parameter, maxImageSize must be larger than minImageSize"

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter, maxFileSize must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter, maxImageSize must be larger than minImageSize"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v0

    invoke-virtual {p3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter, maxImageSize must be larger than minImageSize"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    float-to-double v0, p4

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter, minEncodingQuality must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    float-to-double v0, p4

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter, minEncodingQuality must be <= 1.0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method private validateParameters(ILcom/scalado/base/Size;Lcom/scalado/base/Size;Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;FLcom/scalado/caps/codec/Colorspacing;)V
    .locals 2

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter, action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p6, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter, colorspacing must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->validateParameters(ILcom/scalado/base/Size;Lcom/scalado/base/Size;F)V

    return-void
.end method


# virtual methods
.method public getDesiredFileSize()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->desiredFileSize:I

    return v0
.end method

.method public getMaxImageSize()Lcom/scalado/base/Size;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->maxImageSize:Lcom/scalado/base/Size;

    return-object v0
.end method

.method public getMinImageSize()Lcom/scalado/base/Size;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->minImageSize:Lcom/scalado/base/Size;

    return-object v0
.end method

.method public setAction(Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter, action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;->access$0(Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo$Action;)I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->action:I

    return-void
.end method

.method public setColorSpacing(Lcom/scalado/caps/codec/Colorspacing;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter, colorspacing must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/scalado/caps/codec/Colorspacing;->value()I

    move-result v0

    iput v0, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->colorspacing:I

    return-void
.end method

.method public setDesiredFileSize(I)V
    .locals 3

    iget-object v0, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->maxImageSize:Lcom/scalado/base/Size;

    iget-object v1, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->minImageSize:Lcom/scalado/base/Size;

    iget v2, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->minEncodingQuality:F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->validateParameters(ILcom/scalado/base/Size;Lcom/scalado/base/Size;F)V

    iput p1, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->desiredFileSize:I

    return-void
.end method

.method public setMaxImageSize(Lcom/scalado/base/Size;)V
    .locals 3

    iget v0, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->desiredFileSize:I

    iget-object v1, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->minImageSize:Lcom/scalado/base/Size;

    iget v2, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->minEncodingQuality:F

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->validateParameters(ILcom/scalado/base/Size;Lcom/scalado/base/Size;F)V

    iput-object p1, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->maxImageSize:Lcom/scalado/base/Size;

    return-void
.end method

.method public setMinEncodingQuality(F)V
    .locals 3

    iget v0, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->desiredFileSize:I

    iget-object v1, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->maxImageSize:Lcom/scalado/base/Size;

    iget-object v2, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->minImageSize:Lcom/scalado/base/Size;

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->validateParameters(ILcom/scalado/base/Size;Lcom/scalado/base/Size;F)V

    iput p1, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->minEncodingQuality:F

    return-void
.end method

.method public setMinImageSize(Lcom/scalado/base/Size;)V
    .locals 3

    iget v0, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->desiredFileSize:I

    iget-object v1, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->maxImageSize:Lcom/scalado/base/Size;

    iget v2, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->minEncodingQuality:F

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->validateParameters(ILcom/scalado/base/Size;Lcom/scalado/base/Size;F)V

    iput-object p1, p0, Lcom/scalado/caps/jpegsqueeze/AutoResizeInfo;->minImageSize:Lcom/scalado/base/Size;

    return-void
.end method
