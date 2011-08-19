.class final Lcom/zinio/mobile/android/view/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/zinio/mobile/android/view/ak;->a:Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ak;->a:Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->finish()V

    .line 127
    return-void
.end method
