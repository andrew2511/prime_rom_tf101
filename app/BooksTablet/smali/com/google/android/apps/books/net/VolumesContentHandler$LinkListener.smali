.class Lcom/google/android/apps/books/net/VolumesContentHandler$LinkListener;
.super Ljava/lang/Object;
.source "VolumesContentHandler.java"

# interfaces
.implements Landroid/sax/StartElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/net/VolumesContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinkListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/net/VolumesContentHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$LinkListener;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>.LinkListener;"
    iput-object p1, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$LinkListener;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/net/VolumesContentHandler;Lcom/google/android/apps/books/net/VolumesContentHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 379
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$LinkListener;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>.LinkListener;"
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/net/VolumesContentHandler$LinkListener;-><init>(Lcom/google/android/apps/books/net/VolumesContentHandler;)V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 1
    .parameter "attributes"

    .prologue
    .line 384
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$LinkListener;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>.LinkListener;"
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$LinkListener;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/net/VolumesContentHandler;->handleLink(Lorg/xml/sax/Attributes;)V

    .line 385
    return-void
.end method
