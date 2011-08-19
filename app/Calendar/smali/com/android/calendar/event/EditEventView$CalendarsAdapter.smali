.class Lcom/android/calendar/event/EditEventView$CalendarsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "EditEventView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarsAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "c"

    .prologue
    .line 562
    const v0, 0x7f040010

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 563
    const v0, 0x7f04000f

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EditEventView$CalendarsAdapter;->setDropDownViewResource(I)V

    .line 564
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 568
    const v8, 0x7f0e0024

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 569
    .local v1, colorBar:Landroid/view/View;
    const-string v8, "color"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 570
    .local v2, colorColumn:I
    const-string v8, "displayName"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 571
    .local v5, nameColumn:I
    const-string v8, "ownerAccount"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 572
    .local v6, ownerColumn:I
    if-eqz v1, :cond_0

    .line 573
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 576
    :cond_0
    const v8, 0x7f0e002a

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 577
    .local v4, name:Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 578
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 579
    .local v3, displayName:Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    const/high16 v8, -0x100

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 582
    const v8, 0x7f0e002b

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 583
    .local v0, accountName:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 584
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 585
    .local v7, res:Landroid/content/res/Resources;
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 587
    const v8, 0x7f080009

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 590
    .end local v0           #accountName:Landroid/widget/TextView;
    .end local v3           #displayName:Ljava/lang/String;
    .end local v7           #res:Landroid/content/res/Resources;
    :cond_1
    return-void
.end method
