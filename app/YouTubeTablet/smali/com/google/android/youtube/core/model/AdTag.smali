.class public Lcom/google/android/youtube/core/model/AdTag;
.super Ljava/lang/Object;
.source "AdTag.java"


# instance fields
.field public final delay:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(ILandroid/net/Uri;)V
    .locals 0
    .parameter "delay"
    .parameter "uri"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/google/android/youtube/core/model/AdTag;->delay:I

    .line 24
    iput-object p2, p0, Lcom/google/android/youtube/core/model/AdTag;->uri:Landroid/net/Uri;

    .line 25
    return-void
.end method
