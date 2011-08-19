.class Lcom/google/android/apps/books/net/VolumesContentHandler$1;
.super Ljava/lang/Object;
.source "VolumesContentHandler.java"

# interfaces
.implements Landroid/sax/StartElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/net/VolumesContentHandler;-><init>(ZLcom/google/android/apps/books/net/KeyValueHandler;)V
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
    .line 144
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$1;,"Lcom/google/android/apps/books/net/VolumesContentHandler.1;"
    iput-object p1, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$1;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 1
    .parameter "attributes"

    .prologue
    .line 146
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$1;,"Lcom/google/android/apps/books/net/VolumesContentHandler.1;"
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$1;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-static {v0}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/net/KeyValueHandler;->init()V

    .line 147
    return-void
.end method
