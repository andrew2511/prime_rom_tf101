.class Lcom/google/android/apps/books/net/VolumesContentHandler$9;
.super Ljava/lang/Object;
.source "VolumesContentHandler.java"

# interfaces
.implements Landroid/sax/StartElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/net/VolumesContentHandler;->mapPositionValues(Landroid/sax/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/net/VolumesContentHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$9;,"Lcom/google/android/apps/books/net/VolumesContentHandler.9;"
    iput-object p1, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$9;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 7
    .parameter "attributes"

    .prologue
    .line 320
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$9;,"Lcom/google/android/apps/books/net/VolumesContentHandler.9;"
    const-string v3, "value"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, position:Ljava/lang/String;
    const-string v3, "time"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, time:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$9;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-static {v3}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$500(Lcom/google/android/apps/books/net/VolumesContentHandler;)Landroid/text/format/Time;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    move-result v0

    .line 323
    .local v0, parsed:Z
    if-nez v0, :cond_0

    .line 324
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 327
    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$9;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-static {v3}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v3

    const-string v4, "position"

    invoke-interface {v3, v4, v1}, Lcom/google/android/apps/books/net/KeyValueHandler;->setColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v3, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$9;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-static {v3}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v3

    const-string v4, "last_access"

    iget-object v5, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$9;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-static {v5}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$500(Lcom/google/android/apps/books/net/VolumesContentHandler;)Landroid/text/format/Time;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/google/android/apps/books/net/KeyValueHandler;->setColumn(Ljava/lang/String;Ljava/lang/Long;)V

    .line 329
    return-void
.end method
