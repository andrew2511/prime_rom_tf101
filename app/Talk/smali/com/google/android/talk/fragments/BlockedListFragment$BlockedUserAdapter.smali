.class final Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "BlockedListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BlockedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BlockedUserAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BlockedListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/BlockedListFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;->this$0:Lcom/google/android/talk/fragments/BlockedListFragment;

    .line 147
    const v0, 0x7f040009

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 148
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 152
    const v1, 0x7f100018

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 153
    .local v8, name:Landroid/widget/TextView;
    const v1, 0x7f100017

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 154
    .local v9, nickname:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;->this$0:Lcom/google/android/talk/fragments/BlockedListFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/BlockedListFragment;->access$000(Lcom/google/android/talk/fragments/BlockedListFragment;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, username:Ljava/lang/String;
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;->this$0:Lcom/google/android/talk/fragments/BlockedListFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/BlockedListFragment;->access$100(Lcom/google/android/talk/fragments/BlockedListFragment;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    const v1, 0x7f100016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 161
    .local v7, i:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;->this$0:Lcom/google/android/talk/fragments/BlockedListFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/BlockedListFragment;->access$200(Lcom/google/android/talk/fragments/BlockedListFragment;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/talk/AvatarCache;->getInstance(JZ)Lcom/google/android/talk/AvatarCache;

    move-result-object v0

    .line 162
    .local v0, cache:Lcom/google/android/talk/AvatarCache;
    iget-object v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;->this$0:Lcom/google/android/talk/fragments/BlockedListFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/BlockedListFragment;->access$300(Lcom/google/android/talk/fragments/BlockedListFragment;)I

    move-result v2

    iget-object v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;->this$0:Lcom/google/android/talk/fragments/BlockedListFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/BlockedListFragment;->access$400(Lcom/google/android/talk/fragments/BlockedListFragment;)I

    move-result v3

    iget-object v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;->this$0:Lcom/google/android/talk/fragments/BlockedListFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/BlockedListFragment;->access$500(Lcom/google/android/talk/fragments/BlockedListFragment;)Lcom/google/android/talk/TalkApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getGenericAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/AvatarCache;->getAvatar(Landroid/database/Cursor;IILjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 166
    .local v6, avatar:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    return-void
.end method
