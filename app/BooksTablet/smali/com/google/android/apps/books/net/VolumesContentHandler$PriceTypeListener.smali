.class Lcom/google/android/apps/books/net/VolumesContentHandler$PriceTypeListener;
.super Ljava/lang/Object;
.source "VolumesContentHandler.java"

# interfaces
.implements Landroid/sax/ElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/net/VolumesContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PriceTypeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/net/VolumesContentHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$PriceTypeListener;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>.PriceTypeListener;"
    iput-object p1, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$PriceTypeListener;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/net/VolumesContentHandler;Lcom/google/android/apps/books/net/VolumesContentHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 388
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$PriceTypeListener;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>.PriceTypeListener;"
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/net/VolumesContentHandler$PriceTypeListener;-><init>(Lcom/google/android/apps/books/net/VolumesContentHandler;)V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 2

    .prologue
    .line 400
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$PriceTypeListener;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>.PriceTypeListener;"
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$PriceTypeListener;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$602(Lcom/google/android/apps/books/net/VolumesContentHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    return-void
.end method

.method public start(Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "attributes"

    .prologue
    .line 393
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$PriceTypeListener;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>.PriceTypeListener;"
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$PriceTypeListener;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$602(Lcom/google/android/apps/books/net/VolumesContentHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 394
    return-void
.end method
