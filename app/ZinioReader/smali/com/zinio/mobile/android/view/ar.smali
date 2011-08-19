.class final Lcom/zinio/mobile/android/view/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/TOCArticlesActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/TOCArticlesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/zinio/mobile/android/view/ar;->a:Lcom/zinio/mobile/android/view/TOCArticlesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ar;->a:Lcom/zinio/mobile/android/view/TOCArticlesActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->finish()V

    .line 124
    return-void
.end method
