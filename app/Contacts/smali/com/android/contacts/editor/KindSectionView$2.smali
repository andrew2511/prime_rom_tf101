.class Lcom/android/contacts/editor/KindSectionView$2;
.super Ljava/lang/Object;
.source "KindSectionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/KindSectionView;->addItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/KindSectionView;

.field final synthetic val$newField:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/KindSectionView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionView$2;->this$0:Lcom/android/contacts/editor/KindSectionView;

    iput-object p2, p0, Lcom/android/contacts/editor/KindSectionView$2;->val$newField:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView$2;->val$newField:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 277
    return-void
.end method
