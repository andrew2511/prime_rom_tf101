.class public Lcom/android/email/activity/AccountShortcutPicker;
.super Landroid/app/ListActivity;
.source "AccountShortcutPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/AccountShortcutPicker$1;,
        Lcom/android/email/activity/AccountShortcutPicker$AccountTask;
    }
.end annotation


# static fields
.field private static final FROM_COLUMNS:[Ljava/lang/String;

.field private static final TO_IDS:[I


# instance fields
.field private mAccountTask:Lcom/android/email/activity/AccountShortcutPicker$AccountTask;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 51
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "emailAddress"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/AccountShortcutPicker;->FROM_COLUMNS:[Ljava/lang/String;

    .line 55
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/AccountShortcutPicker;->TO_IDS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x48t 0x0t 0xft 0x7ft
        0x49t 0x0t 0xft 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 117
    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/email/activity/AccountShortcutPicker;->FROM_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/email/activity/AccountShortcutPicker;->TO_IDS:[I

    return-object v0
.end method

.method private setupShortcut(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 5
    .parameter "account"

    .prologue
    .line 180
    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {p0, v3, v4}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v2

    .line 183
    .local v2, shortcutIntent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 184
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 185
    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const/high16 v3, 0x7f03

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 187
    .local v0, iconResource:Landroid/os/Parcelable;
    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 191
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/android/email/activity/AccountShortcutPicker;->setResult(ILandroid/content/Intent;)V

    .line 192
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 101
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/AccountShortcutPicker;->finish()V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x7f0f000f
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p0}, Lcom/android/email/activity/AccountShortcutPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/email/activity/AccountShortcutPicker;->finish()V

    .line 79
    :goto_0
    return-void

    .line 70
    :cond_0
    const v1, 0x7f040015

    invoke-virtual {p0, v1}, Lcom/android/email/activity/AccountShortcutPicker;->setContentView(I)V

    .line 71
    const v1, 0x7f0f000f

    invoke-virtual {p0, v1}, Lcom/android/email/activity/AccountShortcutPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/email/activity/AccountShortcutPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 74
    .local v0, listView:Landroid/widget/ListView;
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 77
    new-instance v1, Lcom/android/email/activity/AccountShortcutPicker$AccountTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/AccountShortcutPicker$AccountTask;-><init>(Lcom/android/email/activity/AccountShortcutPicker;Lcom/android/email/activity/AccountShortcutPicker$1;)V

    iput-object v1, p0, Lcom/android/email/activity/AccountShortcutPicker;->mAccountTask:Lcom/android/email/activity/AccountShortcutPicker$AccountTask;

    .line 78
    iget-object v1, p0, Lcom/android/email/activity/AccountShortcutPicker;->mAccountTask:Lcom/android/email/activity/AccountShortcutPicker$AccountTask;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AccountShortcutPicker$AccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 85
    iget-object v1, p0, Lcom/android/email/activity/AccountShortcutPicker;->mAccountTask:Lcom/android/email/activity/AccountShortcutPicker$AccountTask;

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 86
    iput-object v2, p0, Lcom/android/email/activity/AccountShortcutPicker;->mAccountTask:Lcom/android/email/activity/AccountShortcutPicker$AccountTask;

    .line 88
    invoke-virtual {p0}, Lcom/android/email/activity/AccountShortcutPicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/SimpleCursorAdapter;

    .line 89
    .local v0, adapter:Landroid/widget/SimpleCursorAdapter;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, v2}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 92
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 108
    .local v1, cursor:Landroid/database/Cursor;
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    .line 109
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restore(Landroid/database/Cursor;)V

    .line 110
    invoke-direct {p0, v0}, Lcom/android/email/activity/AccountShortcutPicker;->setupShortcut(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/email/activity/AccountShortcutPicker;->finish()V

    .line 112
    return-void
.end method
