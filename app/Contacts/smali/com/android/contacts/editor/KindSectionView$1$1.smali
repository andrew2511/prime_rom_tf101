.class Lcom/android/contacts/editor/KindSectionView$1$1;
.super Ljava/lang/Object;
.source "KindSectionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/KindSectionView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/KindSectionView$1;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/KindSectionView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionView$1$1;->this$1:Lcom/android/contacts/editor/KindSectionView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView$1$1;->this$1:Lcom/android/contacts/editor/KindSectionView$1;

    iget-object v0, v0, Lcom/android/contacts/editor/KindSectionView$1;->this$0:Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionView;->addItem()V

    .line 123
    return-void
.end method
