.class Lcom/google/android/location/LocationMasfClient$2;
.super Ljava/lang/Object;
.source "LocationMasfClient.java"

# interfaces
.implements Lcom/google/masf/ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/location/LocationMasfClient;->uploadCollectionReport(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/location/LocationMasfClient;


# direct methods
.method constructor <init>(Lcom/google/android/location/LocationMasfClient;)V
    .locals 0
    .parameter

    .prologue
    .line 921
    iput-object p1, p0, Lcom/google/android/location/LocationMasfClient$2;->this$0:Lcom/google/android/location/LocationMasfClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestComplete(Ljava/lang/Object;)V
    .locals 13
    .parameter "result"

    .prologue
    const/4 v9, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x2

    .line 923
    move-object v0, p1

    check-cast v0, Lcom/google/common/io/protocol/ProtoBuf;

    move-object v5, v0

    .line 925
    .local v5, response:Lcom/google/common/io/protocol/ProtoBuf;
    if-nez v5, :cond_1

    .line 926
    const-string v8, "LocationMasfClient"

    const-string v9, "uploadCollectionReport(): response is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    invoke-virtual {v5, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v6

    .line 931
    .local v6, status1:I
    if-eqz v6, :cond_2

    .line 932
    const-string v8, "LocationMasfClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uploadCollectionReport(): RPC failed with status "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 936
    :cond_2
    invoke-virtual {v5, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 937
    invoke-virtual {v5, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 938
    .local v3, platformKey:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 939
    iget-object v8, p0, Lcom/google/android/location/LocationMasfClient$2;->this$0:Lcom/google/android/location/LocationMasfClient;

    invoke-static {v8, v3}, Lcom/google/android/location/LocationMasfClient;->access$200(Lcom/google/android/location/LocationMasfClient;Ljava/lang/String;)V

    .line 943
    .end local v3           #platformKey:Ljava/lang/String;
    :cond_3
    invoke-virtual {v5, v11}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 944
    const-string v8, "LocationMasfClient"

    const-string v9, "uploadCollectionReport(): no ReplyElement"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 948
    :cond_4
    invoke-virtual {v5, v11}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 949
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 950
    invoke-virtual {v5, v11, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 951
    .local v4, replyElement:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v4, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v7

    .line 952
    .local v7, status2:I
    if-eqz v7, :cond_5

    .line 953
    const-string v8, "LocationMasfClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uploadCollectionReport(): GLS failed with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
