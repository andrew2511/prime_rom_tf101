.class public final Lcom/android/vcard/VCardComposer$HandlerForOutputStream;
.super Ljava/lang/Object;
.source "VCardComposer.java"

# interfaces
.implements Lcom/android/vcard/VCardComposer$OneEntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HandlerForOutputStream"
.end annotation


# instance fields
.field private final mOutputStream:Ljava/io/OutputStream;

.field private mWriter:Ljava/io/Writer;

.field final synthetic this$0:Lcom/android/vcard/VCardComposer;


# direct methods
.method public constructor <init>(Lcom/android/vcard/VCardComposer;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter "outputStream"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/vcard/VCardComposer$HandlerForOutputStream;->this$0:Lcom/android/vcard/VCardComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p2, p0, Lcom/android/vcard/VCardComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 177
    return-void
.end method


# virtual methods
.method public onEntryCreated(Ljava/lang/String;)Z
    .locals 4
    .parameter "vcard"

    .prologue
    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/android/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 214
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 215
    .local v0, e:Ljava/io/IOException;
    const-string v1, "VCardComposer.HandlerForOutputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException occurred during exportOneContactData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Lcom/android/vcard/VCardComposer$HandlerForOutputStream;->this$0:Lcom/android/vcard/VCardComposer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException occurred: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/vcard/VCardComposer;->access$102(Lcom/android/vcard/VCardComposer;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onInit(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 182
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/android/vcard/VCardComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/android/vcard/VCardComposer$HandlerForOutputStream;->this$0:Lcom/android/vcard/VCardComposer;

    invoke-static {v5}, Lcom/android/vcard/VCardComposer;->access$000(Lcom/android/vcard/VCardComposer;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lcom/android/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    iget-object v2, p0, Lcom/android/vcard/VCardComposer$HandlerForOutputStream;->this$0:Lcom/android/vcard/VCardComposer;

    invoke-static {v2}, Lcom/android/vcard/VCardComposer;->access$200(Lcom/android/vcard/VCardComposer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    :try_start_1
    iget-object v2, p0, Lcom/android/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    iget-object v3, p0, Lcom/android/vcard/VCardComposer$HandlerForOutputStream;->this$0:Lcom/android/vcard/VCardComposer;

    const-string v4, "-1"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/vcard/VCardComposer;->access$300(Lcom/android/vcard/VCardComposer;Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 207
    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 184
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 185
    .local v1, e1:Ljava/io/UnsupportedEncodingException;
    const-string v2, "VCardComposer.HandlerForOutputStream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported charset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vcard/VCardComposer$HandlerForOutputStream;->this$0:Lcom/android/vcard/VCardComposer;

    invoke-static {v4}, Lcom/android/vcard/VCardComposer;->access$000(Lcom/android/vcard/VCardComposer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v2, p0, Lcom/android/vcard/VCardComposer$HandlerForOutputStream;->this$0:Lcom/android/vcard/VCardComposer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encoding is not supported (usually this does not happen!): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vcard/VCardComposer$HandlerForOutputStream;->this$0:Lcom/android/vcard/VCardComposer;

    invoke-static {v4}, Lcom/android/vcard/VCardComposer;->access$000(Lcom/android/vcard/VCardComposer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/vcard/VCardComposer;->access$102(Lcom/android/vcard/VCardComposer;Ljava/lang/String;)Ljava/lang/String;

    move v2, v6

    .line 188
    goto :goto_0

    .line 195
    .end local v1           #e1:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 196
    .local v0, e:Lcom/android/vcard/exception/VCardException;
    const-string v2, "VCardComposer.HandlerForOutputStream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VCardException has been thrown during on Init(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/vcard/exception/VCardException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 198
    goto :goto_0

    .line 199
    .end local v0           #e:Lcom/android/vcard/exception/VCardException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 200
    .local v0, e:Ljava/io/IOException;
    const-string v2, "VCardComposer.HandlerForOutputStream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occurred during exportOneContactData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Lcom/android/vcard/VCardComposer$HandlerForOutputStream;->this$0:Lcom/android/vcard/VCardComposer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occurred: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/vcard/VCardComposer;->access$102(Lcom/android/vcard/VCardComposer;Ljava/lang/String;)Ljava/lang/String;

    move v2, v6

    .line 204
    goto/16 :goto_0
.end method

.method public onTerminate()V
    .locals 3

    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/android/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 230
    .local v0, e:Ljava/io/IOException;
    const-string v1, "VCardComposer.HandlerForOutputStream"

    const-string v2, "IOException is thrown during close(). Ignored."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
