.class public Lcom/scalado/caps/face/FeatureSet;
.super Ljava/lang/Object;
.source "FeatureSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/face/FeatureSet$Feature;
    }
.end annotation


# instance fields
.field private mSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/scalado/caps/face/FeatureSet$Feature;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/scalado/caps/face/FeatureSet;-><init>(ZZZZZ)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/scalado/caps/face/FeatureSet$Feature;->EYE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v0}, Lcom/scalado/caps/face/FeatureSet$Feature;->getNativeDefine()I

    move-result v0

    and-int/2addr v0, p1

    if-lez v0, :cond_1

    move v1, v6

    :goto_0
    sget-object v0, Lcom/scalado/caps/face/FeatureSet$Feature;->MOUTH:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v0}, Lcom/scalado/caps/face/FeatureSet$Feature;->getNativeDefine()I

    move-result v0

    and-int/2addr v0, p1

    if-lez v0, :cond_2

    move v2, v6

    :goto_1
    sget-object v0, Lcom/scalado/caps/face/FeatureSet$Feature;->NOSE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v0}, Lcom/scalado/caps/face/FeatureSet$Feature;->getNativeDefine()I

    move-result v0

    and-int/2addr v0, p1

    if-lez v0, :cond_3

    move v3, v6

    :goto_2
    sget-object v0, Lcom/scalado/caps/face/FeatureSet$Feature;->SMILE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v0}, Lcom/scalado/caps/face/FeatureSet$Feature;->getNativeDefine()I

    move-result v0

    and-int/2addr v0, p1

    if-lez v0, :cond_4

    move v4, v6

    :goto_3
    sget-object v0, Lcom/scalado/caps/face/FeatureSet$Feature;->BLINK:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v0}, Lcom/scalado/caps/face/FeatureSet$Feature;->getNativeDefine()I

    move-result v0

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    move v5, v6

    :cond_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/scalado/caps/face/FeatureSet;-><init>(ZZZZZ)V

    return-void

    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/face/FeatureSet;-><init>()V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/scalado/caps/face/FeatureSet$Feature;->EYE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {p0, v0}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    sget-object v0, Lcom/scalado/caps/face/FeatureSet$Feature;->BLINK:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {p0, v0}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    sget-object v0, Lcom/scalado/caps/face/FeatureSet$Feature;->MOUTH:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {p0, v0}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    sget-object v0, Lcom/scalado/caps/face/FeatureSet$Feature;->NOSE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {p0, v0}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    sget-object v0, Lcom/scalado/caps/face/FeatureSet$Feature;->SMILE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {p0, v0}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    :cond_0
    return-void
.end method

.method private constructor <init>(ZZZZZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->EYE:Lcom/scalado/caps/face/FeatureSet$Feature;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->MOUTH:Lcom/scalado/caps/face/FeatureSet$Feature;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->NOSE:Lcom/scalado/caps/face/FeatureSet$Feature;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->SMILE:Lcom/scalado/caps/face/FeatureSet$Feature;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->BLINK:Lcom/scalado/caps/face/FeatureSet$Feature;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Lcom/scalado/caps/face/FeatureSet$Feature;)V
    .locals 2

    invoke-direct {p0}, Lcom/scalado/caps/face/FeatureSet;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public disableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V
    .locals 3

    iget-object v0, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V
    .locals 3

    iget-object v0, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected getNativeSet()I
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    sget-object v2, Lcom/scalado/caps/face/FeatureSet$Feature;->EYE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->EYE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1}, Lcom/scalado/caps/face/FeatureSet$Feature;->getNativeDefine()I

    move-result v1

    :goto_0
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    sget-object v2, Lcom/scalado/caps/face/FeatureSet$Feature;->MOUTH:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->MOUTH:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1}, Lcom/scalado/caps/face/FeatureSet$Feature;->getNativeDefine()I

    move-result v1

    :goto_1
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    sget-object v2, Lcom/scalado/caps/face/FeatureSet$Feature;->NOSE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->NOSE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1}, Lcom/scalado/caps/face/FeatureSet$Feature;->getNativeDefine()I

    move-result v1

    :goto_2
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    sget-object v2, Lcom/scalado/caps/face/FeatureSet$Feature;->SMILE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->SMILE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1}, Lcom/scalado/caps/face/FeatureSet$Feature;->getNativeDefine()I

    move-result v1

    :goto_3
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    sget-object v2, Lcom/scalado/caps/face/FeatureSet$Feature;->BLINK:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/scalado/caps/face/FeatureSet$Feature;->BLINK:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1}, Lcom/scalado/caps/face/FeatureSet$Feature;->getNativeDefine()I

    move-result v1

    :goto_4
    or-int/2addr v0, v1

    return v0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_4
.end method

.method public isFeatureEnabled(Lcom/scalado/caps/face/FeatureSet$Feature;)Z
    .locals 2

    iget-object v0, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error! Feature is missing from set!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/face/FeatureSet;->mSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
