.class Lcom/layar/WelcomeSequenceActivity$LoadWelcomeSequence;
.super Landroid/os/AsyncTask;
.source "WelcomeSequenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/WelcomeSequenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadWelcomeSequence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFilename:Ljava/lang/String;

.field final synthetic this$0:Lcom/layar/WelcomeSequenceActivity;


# direct methods
.method public constructor <init>(Lcom/layar/WelcomeSequenceActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/layar/WelcomeSequenceActivity$LoadWelcomeSequence;->this$0:Lcom/layar/WelcomeSequenceActivity;

    .line 235
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 236
    iput-object p2, p0, Lcom/layar/WelcomeSequenceActivity$LoadWelcomeSequence;->mContext:Landroid/content/Context;

    .line 237
    iput-object p3, p0, Lcom/layar/WelcomeSequenceActivity$LoadWelcomeSequence;->mFilename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/WelcomeSequenceActivity$LoadWelcomeSequence;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 10
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    const/4 v2, 0x0

    .line 244
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v8, p0, Lcom/layar/WelcomeSequenceActivity$LoadWelcomeSequence;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    iget-object v9, p0, Lcom/layar/WelcomeSequenceActivity$LoadWelcomeSequence;->mFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 245
    invoke-static {v2}, Lcom/layar/util/IOUtilities;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, jsonString:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 249
    .local v3, json:Lorg/json/JSONObject;
    const-string v8, "screens"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 250
    .local v4, jsonScreensArray:Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 254
    .local v0, count:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    .local v6, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 269
    invoke-static {v2}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    move-object v8, v6

    .line 271
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v4           #jsonScreensArray:Lorg/json/JSONArray;
    .end local v5           #jsonString:Ljava/lang/String;
    .end local v6           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;>;"
    :goto_1
    return-object v8

    .line 257
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #json:Lorg/json/JSONObject;
    .restart local v4       #jsonScreensArray:Lorg/json/JSONArray;
    .restart local v5       #jsonString:Ljava/lang/String;
    .restart local v6       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 256
    invoke-static {v8}, Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;->parse(Lorg/json/JSONObject;)Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;

    move-result-object v7

    .line 258
    .local v7, screenData:Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;
    if-eqz v7, :cond_1

    .line 259
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v4           #jsonScreensArray:Lorg/json/JSONArray;
    .end local v5           #jsonString:Ljava/lang/String;
    .end local v6           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;>;"
    .end local v7           #screenData:Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;
    :catch_0
    move-exception v8

    .line 269
    invoke-static {v2}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 271
    :goto_2
    const/4 v8, 0x0

    goto :goto_1

    .line 265
    :catch_1
    move-exception v8

    .line 269
    invoke-static {v2}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_2

    .line 268
    :catchall_0
    move-exception v8

    .line 269
    invoke-static {v2}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 270
    throw v8
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/layar/WelcomeSequenceActivity$LoadWelcomeSequence;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/WelcomeSequenceActivity$WelcomeScreenData;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/layar/WelcomeSequenceActivity$LoadWelcomeSequence;->this$0:Lcom/layar/WelcomeSequenceActivity;

    invoke-static {v0, p1}, Lcom/layar/WelcomeSequenceActivity;->access$0(Lcom/layar/WelcomeSequenceActivity;Ljava/util/ArrayList;)V

    .line 278
    iget-object v0, p0, Lcom/layar/WelcomeSequenceActivity$LoadWelcomeSequence;->this$0:Lcom/layar/WelcomeSequenceActivity;

    invoke-static {v0}, Lcom/layar/WelcomeSequenceActivity;->access$1(Lcom/layar/WelcomeSequenceActivity;)V

    .line 279
    return-void
.end method
