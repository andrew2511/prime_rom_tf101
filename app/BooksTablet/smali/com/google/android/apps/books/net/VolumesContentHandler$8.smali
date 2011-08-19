.class Lcom/google/android/apps/books/net/VolumesContentHandler$8;
.super Ljava/lang/Object;
.source "VolumesContentHandler.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/net/VolumesContentHandler;->mapLong(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

.field final synthetic val$columnName:Ljava/lang/String;

.field final synthetic val$defaultValue:Ljava/lang/Long;

.field final synthetic val$element:Landroid/sax/Element;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/net/VolumesContentHandler;Landroid/sax/Element;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$8;,"Lcom/google/android/apps/books/net/VolumesContentHandler.8;"
    iput-object p1, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$8;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    iput-object p2, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$8;->val$element:Landroid/sax/Element;

    iput-object p3, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$8;->val$defaultValue:Ljava/lang/Long;

    iput-object p4, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$8;->val$columnName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 5
    .parameter "body"

    .prologue
    .line 300
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$8;,"Lcom/google/android/apps/books/net/VolumesContentHandler.8;"
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 305
    .local v1, value:Ljava/lang/Long;
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$8;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-static {v2}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$8;->val$columnName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/google/android/apps/books/net/KeyValueHandler;->setColumn(Ljava/lang/String;Ljava/lang/Long;)V

    .line 306
    return-void

    .line 301
    .end local v1           #value:Ljava/lang/Long;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 302
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "VolumesContentHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$8;->val$element:Landroid/sax/Element;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    iget-object v1, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$8;->val$defaultValue:Ljava/lang/Long;

    .restart local v1       #value:Ljava/lang/Long;
    goto :goto_0
.end method
