.class Lcom/google/android/talk/RosterListItem$BindHandler;
.super Ljava/lang/Object;
.source "RosterListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/RosterListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindHandler"
.end annotation


# instance fields
.field callState:Lcom/google/android/talk/RosterListAdapter$CallState;

.field capabilities:I

.field contactType:I

.field invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;

.field isGroupChat:Z

.field isGroupChatInvitation:Z

.field itemViewType:I

.field nickname:Ljava/lang/String;

.field presenceMode:I

.field suppressIndent:Z

.field final synthetic this$0:Lcom/google/android/talk/RosterListItem;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/RosterListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/RosterListItem;Lcom/google/android/talk/RosterListItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListItem$BindHandler;-><init>(Lcom/google/android/talk/RosterListItem;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/talk/RosterListItem$BindHandler;Landroid/content/res/Resources;Lcom/google/android/talk/util/Markup;Landroid/database/Cursor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 232
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/talk/RosterListItem$BindHandler;->bindLines(Landroid/content/res/Resources;Lcom/google/android/talk/util/Markup;Landroid/database/Cursor;Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/android/talk/RosterListItem$BindHandler;Landroid/database/Cursor;Lcom/google/android/talk/RosterListAdapter$CallState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 232
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/RosterListItem$BindHandler;->bindPresence(Landroid/database/Cursor;Lcom/google/android/talk/RosterListAdapter$CallState;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/android/talk/RosterListItem$BindHandler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListItem$BindHandler;->bindShover(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/android/talk/RosterListItem$BindHandler;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListItem$BindHandler;->bindClientType(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/android/talk/RosterListItem$BindHandler;Landroid/database/Cursor;JZZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 232
    invoke-direct/range {p0 .. p7}, Lcom/google/android/talk/RosterListItem$BindHandler;->bindAvatar(Landroid/database/Cursor;JZZZZ)V

    return-void
.end method

.method private bindAvatar(Landroid/database/Cursor;JZZZZ)V
    .locals 10
    .parameter "c"
    .parameter "accountId"
    .parameter "scrolling"
    .parameter "fastTrack"
    .parameter "narrow"
    .parameter "isOnline"

    .prologue
    .line 394
    iget-boolean v8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->isGroupChat:Z

    if-nez v8, :cond_1

    if-eqz p5, :cond_1

    if-nez p6, :cond_1

    const/4 v8, 0x1

    move v6, v8

    .line 396
    .local v6, quickContact:Z
    :goto_0
    if-nez v6, :cond_2

    iget-object v8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v8}, Lcom/google/android/talk/RosterListItem;->access$2300(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v8

    move-object v1, v8

    :goto_1
    check-cast v1, Landroid/widget/ImageView;

    .line 397
    .local v1, avatar:Landroid/widget/ImageView;
    if-eqz v6, :cond_3

    iget-object v8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v8}, Lcom/google/android/talk/RosterListItem;->access$2300(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    :goto_2
    check-cast v5, Landroid/widget/ImageView;

    .line 399
    .local v5, hide:Landroid/widget/ImageView;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 400
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 402
    const/4 v4, 0x0

    .line 403
    .local v4, hasCustomAvatar:Z
    iget-boolean v8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->isGroupChat:Z

    if-eqz v8, :cond_4

    .line 404
    iget-object v8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v8}, Lcom/google/android/talk/RosterListItem;->access$400(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/TalkApp;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/talk/TalkApp;->mGroupAvatar:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v8}, Lcom/google/android/talk/RosterListItem$BindHandler;->setAvatar(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 421
    :goto_3
    if-eqz p7, :cond_7

    .line 422
    if-nez p4, :cond_0

    .line 423
    iget-object v8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v8, v1}, Lcom/google/android/talk/RosterListItem;->access$2500(Lcom/google/android/talk/RosterListItem;Landroid/widget/ImageView;)V

    .line 424
    iget v8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    if-eqz v8, :cond_0

    .line 425
    iget-object v8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    iget-object v9, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v9}, Lcom/google/android/talk/RosterListItem;->access$1700(Lcom/google/android/talk/RosterListItem;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/talk/RosterListItem;->access$2500(Lcom/google/android/talk/RosterListItem;Landroid/widget/ImageView;)V

    .line 428
    :cond_0
    iget-object v8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v8}, Lcom/google/android/talk/RosterListItem;->access$2600(Lcom/google/android/talk/RosterListItem;)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 438
    .local v7, textColors:Landroid/content/res/ColorStateList;
    :goto_4
    iget v8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->presenceMode:I

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    move v3, v8

    .line 439
    .local v3, contactOnline:Z
    :goto_5
    if-nez v3, :cond_a

    if-eqz v4, :cond_a

    .line 440
    iget-object v8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v8}, Lcom/google/android/talk/RosterListItem;->access$400(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/TalkApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/talk/TalkApp;->getDesaturedColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 444
    :goto_6
    return-void

    .line 394
    .end local v1           #avatar:Landroid/widget/ImageView;
    .end local v3           #contactOnline:Z
    .end local v4           #hasCustomAvatar:Z
    .end local v5           #hide:Landroid/widget/ImageView;
    .end local v6           #quickContact:Z
    .end local v7           #textColors:Landroid/content/res/ColorStateList;
    :cond_1
    const/4 v8, 0x0

    move v6, v8

    goto :goto_0

    .line 396
    .restart local v6       #quickContact:Z
    :cond_2
    iget-object v8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v8}, Lcom/google/android/talk/RosterListItem;->access$2400(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v8

    move-object v1, v8

    goto :goto_1

    .line 397
    .restart local v1       #avatar:Landroid/widget/ImageView;
    :cond_3
    iget-object v8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v8}, Lcom/google/android/talk/RosterListItem;->access$2400(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    goto :goto_2

    .line 406
    .restart local v4       #hasCustomAvatar:Z
    .restart local v5       #hide:Landroid/widget/ImageView;
    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/talk/RosterListItem$BindHandler;->getAvatar(Landroid/database/Cursor;JZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 407
    .local v2, avatarDrawable:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_6

    .line 408
    iget-object v8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v8}, Lcom/google/android/talk/RosterListItem;->access$400(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/TalkApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/talk/TalkApp;->getGenericAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 413
    :goto_7
    if-eqz v6, :cond_5

    .line 414
    move-object v0, v1

    check-cast v0, Landroid/widget/QuickContactBadge;

    move-object v3, v0

    iget-object v8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v8}, Lcom/google/android/talk/RosterListItem;->access$100(Lcom/google/android/talk/RosterListItem;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 416
    :cond_5
    invoke-direct {p0, v1, v2}, Lcom/google/android/talk/RosterListItem$BindHandler;->setAvatar(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 410
    :cond_6
    const/4 v4, 0x1

    goto :goto_7

    .line 430
    .end local v2           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_7
    if-nez p4, :cond_8

    .line 431
    iget-object v8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v8}, Lcom/google/android/talk/RosterListItem;->access$400(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/TalkApp;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/talk/TalkApp;->mOfflineColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 432
    iget v8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    if-eqz v8, :cond_8

    .line 433
    iget-object v8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v8}, Lcom/google/android/talk/RosterListItem;->access$1700(Lcom/google/android/talk/RosterListItem;)Landroid/widget/ImageView;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v9}, Lcom/google/android/talk/RosterListItem;->access$400(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/TalkApp;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/talk/TalkApp;->mOfflineColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 436
    :cond_8
    iget-object v8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v8}, Lcom/google/android/talk/RosterListItem;->access$2700(Lcom/google/android/talk/RosterListItem;)Landroid/content/res/ColorStateList;

    move-result-object v7

    .restart local v7       #textColors:Landroid/content/res/ColorStateList;
    goto :goto_4

    .line 438
    :cond_9
    const/4 v8, 0x0

    move v3, v8

    goto :goto_5

    .line 442
    .restart local v3       #contactOnline:Z
    :cond_a
    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_6
.end method

.method private bindClientType(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    .line 375
    iget v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    if-eqz v1, :cond_1

    .line 377
    const/4 v0, 0x0

    .line 379
    .local v0, clientType:I
    iget v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->presenceMode:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->presenceMode:I

    if-eq v1, v3, :cond_0

    .line 381
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$2100(Lcom/google/android/talk/RosterListItem;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$2200(Lcom/google/android/talk/RosterListItem;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$400(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/TalkApp;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/google/android/talk/TalkApp;->getConnectionTypeIndicator(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 388
    .end local v0           #clientType:I
    :cond_1
    return-void
.end method

.method private bindLines(Landroid/content/res/Resources;Lcom/google/android/talk/util/Markup;Landroid/database/Cursor;Z)V
    .locals 5
    .parameter "r"
    .parameter "markup"
    .parameter "c"
    .parameter "alternate"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 280
    iget v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    if-nez v1, :cond_1

    .line 281
    iget-boolean v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->isGroupChat:Z

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$900(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0c004f

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$1000(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;

    invoke-virtual {v2}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getInviter()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$900(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0c0033

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$1000(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$900(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    if-ne v1, v3, :cond_2

    move v1, v3

    :goto_1
    if-eq v1, p4, :cond_4

    .line 291
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$1100(Lcom/google/android/talk/RosterListItem;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 293
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$1000(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2, v0}, Lcom/google/android/talk/util/Markup;->markup(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v0           #s:Ljava/lang/String;
    :cond_2
    move v1, v4

    .line 290
    goto :goto_1

    .line 295
    .restart local v0       #s:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$1000(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 298
    .end local v0           #s:Ljava/lang/String;
    :cond_4
    iget v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->presenceMode:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->presenceMode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->presenceMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->presenceMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 302
    :cond_5
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$1200(Lcom/google/android/talk/RosterListItem;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1300(Lcom/google/android/talk/RosterListItem;)Landroid/database/CharArrayBuffer;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 303
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$1300(Lcom/google/android/talk/RosterListItem;)Landroid/database/CharArrayBuffer;

    move-result-object v1

    iget v1, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-nez v1, :cond_6

    .line 305
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$1000(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$100(Lcom/google/android/talk/RosterListItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 307
    :cond_6
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$1000(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1300(Lcom/google/android/talk/RosterListItem;)Landroid/database/CharArrayBuffer;

    move-result-object v2

    iget-object v2, v2, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1300(Lcom/google/android/talk/RosterListItem;)Landroid/database/CharArrayBuffer;

    move-result-object v3

    iget v3, v3, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/TextView;->setText([CII)V

    goto/16 :goto_0

    .line 310
    :cond_7
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$1000(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$400(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/TalkApp;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/talk/TalkApp;->mDefaultStatusStrings:[Ljava/lang/String;

    iget v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->presenceMode:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private bindPresence(Landroid/database/Cursor;Lcom/google/android/talk/RosterListAdapter$CallState;)V
    .locals 7
    .parameter "c"
    .parameter "callState"

    .prologue
    const/4 v6, 0x0

    .line 317
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1400(Lcom/google/android/talk/RosterListItem;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1500(Lcom/google/android/talk/RosterListItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v2

    .line 320
    .local v0, presenceBackground:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1700(Lcom/google/android/talk/RosterListItem;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$100(Lcom/google/android/talk/RosterListItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/android/talk/RosterListAdapter$CallState;->appliesToContact(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v1, v2

    .line 322
    .local v1, showAudioVideoPresence:Z
    :goto_1
    if-eqz v1, :cond_4

    .line 323
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1700(Lcom/google/android/talk/RosterListItem;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$400(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/TalkApp;

    move-result-object v3

    iget v4, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->presenceMode:I

    iget v5, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->capabilities:I

    invoke-virtual {v3, v4, v5}, Lcom/google/android/talk/TalkApp;->getStatusIcon(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    iget-boolean v2, p2, Lcom/google/android/talk/RosterListAdapter$CallState;->mIsVideo:Z

    if-eqz v2, :cond_3

    .line 326
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1700(Lcom/google/android/talk/RosterListItem;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200c5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 330
    :goto_2
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1700(Lcom/google/android/talk/RosterListItem;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    :cond_0
    :goto_3
    return-void

    .line 317
    .end local v0           #presenceBackground:Landroid/graphics/drawable/Drawable;
    .end local v1           #showAudioVideoPresence:Z
    :cond_1
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1600(Lcom/google/android/talk/RosterListItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .restart local v0       #presenceBackground:Landroid/graphics/drawable/Drawable;
    :cond_2
    move v1, v6

    .line 321
    goto :goto_1

    .line 328
    .restart local v1       #showAudioVideoPresence:Z
    :cond_3
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1700(Lcom/google/android/talk/RosterListItem;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200c1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 332
    :cond_4
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 333
    iget v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    if-eqz v2, :cond_0

    .line 334
    iget-boolean v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->isGroupChat:Z

    if-eqz v2, :cond_5

    .line 335
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1700(Lcom/google/android/talk/RosterListItem;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    :cond_5
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1700(Lcom/google/android/talk/RosterListItem;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$400(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/TalkApp;

    move-result-object v3

    iget v4, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->presenceMode:I

    iget v5, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->capabilities:I

    invoke-virtual {v3, v4, v5}, Lcom/google/android/talk/TalkApp;->getStatusIcon(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 338
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1700(Lcom/google/android/talk/RosterListItem;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method private bindShover(Z)V
    .locals 7
    .parameter "alternate"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 348
    const/4 v2, 0x0

    .line 349
    .local v2, shove:Z
    iget-boolean v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->suppressIndent:Z

    if-eqz v3, :cond_2

    .line 350
    const/4 v2, 0x0

    .line 356
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 357
    if-nez v2, :cond_5

    move v2, v6

    .line 360
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1800(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1900(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 364
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-virtual {v3}, Lcom/google/android/talk/RosterListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 366
    .local v1, normalDistanceFromAvatar:I
    if-nez v2, :cond_6

    .line 367
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$2000(Lcom/google/android/talk/RosterListItem;)I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 372
    :goto_2
    return-void

    .line 351
    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #normalDistanceFromAvatar:I
    :cond_2
    iget v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 352
    const/4 v2, 0x0

    goto :goto_0

    .line 353
    :cond_3
    iget v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    if-eqz v3, :cond_0

    .line 354
    iget v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    if-eq v3, v6, :cond_4

    move v2, v6

    :goto_3
    goto :goto_0

    :cond_4
    move v2, v5

    goto :goto_3

    :cond_5
    move v2, v5

    .line 357
    goto :goto_1

    .line 369
    .restart local v0       #lp:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1       #normalDistanceFromAvatar:I
    :cond_6
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1800(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_2
.end method

.method private getAvatar(Landroid/database/Cursor;JZ)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "cursor"
    .parameter "accountId"
    .parameter "onlyLoadFromCache"

    .prologue
    const/4 v5, 0x0

    .line 448
    const/4 v1, 0x1

    invoke-static {p2, p3, v1}, Lcom/google/android/talk/AvatarCache;->getInstance(JZ)Lcom/google/android/talk/AvatarCache;

    move-result-object v0

    .line 454
    .local v0, cache:Lcom/google/android/talk/AvatarCache;
    const-string v1, "avatars_data"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 455
    .local v3, avatarDataColumn:I
    if-eqz p4, :cond_0

    .line 456
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$2800(Lcom/google/android/talk/RosterListItem;)I

    move-result v2

    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$100(Lcom/google/android/talk/RosterListItem;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/talk/AvatarCache;->getAvatarIfInCache(Landroid/database/Cursor;IILjava/lang/String;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 463
    .local v7, avatar:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v7

    .line 460
    .end local v7           #avatar:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$2800(Lcom/google/android/talk/RosterListItem;)I

    move-result v2

    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$100(Lcom/google/android/talk/RosterListItem;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/AvatarCache;->getAvatar(Landroid/database/Cursor;IILjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .restart local v7       #avatar:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private setAvatar(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "i"
    .parameter "avatarDrawable"

    .prologue
    .line 467
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 468
    return-void
.end method


# virtual methods
.method compute(Landroid/database/Cursor;Lcom/google/android/talk/RosterListAdapter$CallState;Z)V
    .locals 5
    .parameter "c"
    .parameter "callState"
    .parameter "suppress"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 248
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-virtual {v1}, Lcom/google/android/talk/RosterListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 250
    .local v0, r:Landroid/content/res/Resources;
    iput-object p2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->callState:Lcom/google/android/talk/RosterListAdapter$CallState;

    .line 251
    iput-boolean p3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->suppressIndent:Z

    .line 253
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$200(Lcom/google/android/talk/RosterListItem;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/RosterListItem;->access$102(Lcom/google/android/talk/RosterListItem;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    iput-boolean v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->isGroupChat:Z

    .line 256
    iput-boolean v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->isGroupChatInvitation:Z

    .line 257
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;

    .line 258
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$300(Lcom/google/android/talk/RosterListItem;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->contactType:I

    .line 259
    iget v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->contactType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 260
    iput-boolean v4, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->isGroupChat:Z

    .line 261
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$400(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/TalkApp;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/talk/TalkApp;->mGroupChatInvitations:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$100(Lcom/google/android/talk/RosterListItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gtalkservice/GroupChatInvitation;

    iput-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;

    .line 262
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;

    if-eqz v1, :cond_2

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->isGroupChatInvitation:Z

    .line 265
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->isGroupChatInvitation:Z

    invoke-static {p1, v1}, Lcom/google/android/talk/RosterListItem;->access$500(Landroid/database/Cursor;Z)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    .line 266
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$600(Lcom/google/android/talk/RosterListItem;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->nickname:Ljava/lang/String;

    .line 267
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$700(Lcom/google/android/talk/RosterListItem;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->capabilities:I

    .line 269
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->nickname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    iget-boolean v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->isGroupChat:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0c004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->nickname:Ljava/lang/String;

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$800(Lcom/google/android/talk/RosterListItem;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->presenceMode:I

    .line 273
    return-void

    :cond_2
    move v1, v3

    .line 262
    goto :goto_0

    .line 270
    :cond_3
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$100(Lcom/google/android/talk/RosterListItem;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
