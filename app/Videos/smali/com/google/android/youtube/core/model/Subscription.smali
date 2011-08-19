.class public final Lcom/google/android/youtube/core/model/Subscription;
.super Ljava/lang/Object;
.source "Subscription.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/Subscription$1;,
        Lcom/google/android/youtube/core/model/Subscription$Builder;,
        Lcom/google/android/youtube/core/model/Subscription$Type;
    }
.end annotation


# instance fields
.field public final editUri:Landroid/net/Uri;

.field public final title:Ljava/lang/String;

.field public final type:Lcom/google/android/youtube/core/model/Subscription$Type;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/Subscription$Type;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .parameter "title"
    .parameter "type"
    .parameter "uri"
    .parameter "editUri"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Subscription;->editUri:Landroid/net/Uri;

    .line 50
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    .line 52
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Subscription;->uri:Landroid/net/Uri;

    .line 53
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Subscription;->buildUpon()Lcom/google/android/youtube/core/model/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/youtube/core/model/Subscription$Builder;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/google/android/youtube/core/model/Subscription$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Subscription$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Subscription$Builder;->title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Subscription$Builder;->type(Lcom/google/android/youtube/core/model/Subscription$Type;)Lcom/google/android/youtube/core/model/Subscription$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Subscription;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Subscription$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Subscription$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Subscription;->editUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Subscription$Builder;->editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isUserRelated()Z
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->CHANNEL:Lcom/google/android/youtube/core/model/Subscription$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->FAVORITES:Lcom/google/android/youtube/core/model/Subscription$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->USER:Lcom/google/android/youtube/core/model/Subscription$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    return-object v0
.end method
