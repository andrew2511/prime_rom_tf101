.class Lcom/amazon/topaz/internal/Session$1;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/amazon/topaz/internal/book/Image$ImageLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/topaz/internal/Session;->getIcon(Ljava/lang/String;III)Lcom/amazon/topaz/internal/book/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/topaz/internal/Session;

.field final synthetic val$image:Lcom/amazon/topaz/internal/book/IImage;


# direct methods
.method constructor <init>(Lcom/amazon/topaz/internal/Session;Lcom/amazon/topaz/internal/book/IImage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/amazon/topaz/internal/Session$1;->this$0:Lcom/amazon/topaz/internal/Session;

    iput-object p2, p0, Lcom/amazon/topaz/internal/Session$1;->val$image:Lcom/amazon/topaz/internal/book/IImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load()Lcom/amazon/topaz/internal/book/IImage;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/amazon/topaz/internal/Session$1;->val$image:Lcom/amazon/topaz/internal/book/IImage;

    return-object v0
.end method
