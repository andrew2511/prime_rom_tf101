.class public Lcom/google/android/youtube/core/model/Subscription$Builder;
.super Ljava/lang/Object;
.source "Subscription.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private editUri:Landroid/net/Uri;

.field private playlistTitle:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Lcom/google/android/youtube/core/model/Subscription$Type;

.field private uri:Landroid/net/Uri;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription$Type;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    .line 159
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->uri:Landroid/net/Uri;

    .line 160
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->editUri:Landroid/net/Uri;

    .line 161
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Subscription$Builder;->build()Lcom/google/android/youtube/core/model/Subscription;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->editUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 154
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/youtube/core/model/Subscription;
    .locals 5

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lcom/google/android/youtube/core/model/Subscription$1;->$SwitchMap$com$google$android$youtube$core$model$Subscription$Type:[I

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    new-instance v0, Lcom/google/android/youtube/core/model/Subscription;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->editUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/model/Subscription;-><init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/Subscription$Type;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    goto :goto_0

    .line 136
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    goto :goto_0

    .line 138
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->playlistTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    goto :goto_0

    .line 139
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->query:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .locals 0
    .parameter "editUri"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->editUri:Landroid/net/Uri;

    .line 125
    return-object p0
.end method

.method public playlistTitle(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .locals 0
    .parameter "playlistTitle"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->playlistTitle:Ljava/lang/String;

    .line 115
    return-object p0
.end method

.method public query(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .locals 0
    .parameter "query"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->query:Ljava/lang/String;

    .line 120
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .locals 0
    .parameter "title"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    .line 105
    return-object p0
.end method

.method public type(Lcom/google/android/youtube/core/model/Subscription$Type;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    .line 95
    return-object p0
.end method

.method public uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .locals 0
    .parameter "uri"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->uri:Landroid/net/Uri;

    .line 100
    return-object p0
.end method

.method public username(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .locals 0
    .parameter "username"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->username:Ljava/lang/String;

    .line 110
    return-object p0
.end method
