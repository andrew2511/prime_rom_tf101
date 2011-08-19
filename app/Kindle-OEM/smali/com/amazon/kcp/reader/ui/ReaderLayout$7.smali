.class Lcom/amazon/kcp/reader/ui/ReaderLayout$7;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayout;->animatePageTurn(F)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$7;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 665
    new-instance v0, Lcom/amazon/android/system/AndroidUtilities;

    invoke-direct {v0}, Lcom/amazon/android/system/AndroidUtilities;-><init>()V

    new-instance v1, Lcom/amazon/kcp/reader/ui/ReaderLayout$7$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$7$1;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout$7;)V

    invoke-virtual {v0, v1}, Lcom/amazon/android/system/AndroidUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 679
    return-void
.end method
