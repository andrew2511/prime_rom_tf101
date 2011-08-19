.class public Lcom/layar/util/UpdateHelper$Version;
.super Ljava/lang/Object;
.source "UpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/util/UpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Version"
.end annotation


# instance fields
.field public features:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "versionCode"
    .parameter "features"
    .parameter "target"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p1, p0, Lcom/layar/util/UpdateHelper$Version;->versionCode:I

    .line 127
    iput-object p2, p0, Lcom/layar/util/UpdateHelper$Version;->features:Ljava/lang/String;

    .line 128
    iput-object p3, p0, Lcom/layar/util/UpdateHelper$Version;->target:Ljava/lang/String;

    .line 129
    return-void
.end method
