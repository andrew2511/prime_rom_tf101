.class public Lcom/android/videoeditor/OverlayType;
.super Ljava/lang/Object;
.source "OverlayType.java"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "type"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/videoeditor/OverlayType;->mName:Ljava/lang/String;

    .line 57
    iput p2, p0, Lcom/android/videoeditor/OverlayType;->mType:I

    .line 58
    return-void
.end method

.method public static getOverlays(Landroid/content/Context;)[Lcom/android/videoeditor/OverlayType;
    .locals 8
    .parameter "context"

    .prologue
    const v7, 0x7f090063

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    const/4 v1, 0x4

    new-array v0, v1, [Lcom/android/videoeditor/OverlayType;

    .line 36
    .local v0, overlays:[Lcom/android/videoeditor/OverlayType;
    new-instance v1, Lcom/android/videoeditor/OverlayType;

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/android/videoeditor/OverlayType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    .line 38
    new-instance v1, Lcom/android/videoeditor/OverlayType;

    const v2, 0x7f090064

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/android/videoeditor/OverlayType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v4

    .line 40
    new-instance v1, Lcom/android/videoeditor/OverlayType;

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lcom/android/videoeditor/OverlayType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v5

    .line 42
    new-instance v1, Lcom/android/videoeditor/OverlayType;

    const v2, 0x7f090064

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lcom/android/videoeditor/OverlayType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v6

    .line 45
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/videoeditor/OverlayType;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/videoeditor/OverlayType;->mType:I

    return v0
.end method
