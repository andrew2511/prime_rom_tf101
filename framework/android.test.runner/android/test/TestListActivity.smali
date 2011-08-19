.class public abstract Landroid/test/TestListActivity;
.super Landroid/app/ListActivity;
.source "TestListActivity.java"


# static fields
.field static final MODE_GROUP:I = 0x1

.field public static final PERFORMANCE_TESTS:Ljava/lang/String; = "android.test.performance"


# instance fields
.field private mMode:I

.field private mPerformanceItem:Landroid/view/MenuItem;

.field private mProfilingItem:Landroid/view/MenuItem;

.field private mRegressionItem:Landroid/view/MenuItem;

.field mSuite:Ljava/lang/String;

.field mTests:[Ljava/lang/String;

.field private final sComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/test/TestListActivity;->mMode:I

    .line 70
    new-instance v0, Landroid/test/TestListActivity$1;

    invoke-direct {v0, p0}, Landroid/test/TestListActivity$1;-><init>(Landroid/test/TestListActivity;)V

    iput-object v0, p0, Landroid/test/TestListActivity;->sComparator:Ljava/util/Comparator;

    .line 84
    return-void
.end method

.method static synthetic access$000(Landroid/test/TestListActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/test/TestListActivity;->makeCompareName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addTestRows(Landroid/database/MatrixCursor;)V
    .registers 12
    .parameter "cursor"

    .prologue
    .line 153
    const/4 v2, 0x0

    .line 154
    .local v2, id:I
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    const-string v9, "Run All"

    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    add-int/lit8 v3, v2, 0x1

    .end local v2           #id:I
    .local v3, id:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 155
    iget-object v0, p0, Landroid/test/TestListActivity;->mTests:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_18
    if-ge v1, v4, :cond_53

    aget-object v6, v0, v1

    .line 156
    .local v6, test:Ljava/lang/String;
    invoke-static {v6}, Landroid/test/TestRunner;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, title:Ljava/lang/String;
    invoke-static {p0, v6}, Landroid/test/TestRunner;->isTestSuite(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4f

    const-string v8, "Browse "

    move-object v5, v8

    .line 161
    .local v5, prefix:Ljava/lang/String;
    :goto_29
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    add-int/lit8 v2, v3, 0x1

    .end local v3           #id:I
    .restart local v2       #id:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 155
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2           #id:I
    .restart local v3       #id:I
    goto :goto_18

    .line 157
    .end local v5           #prefix:Ljava/lang/String;
    :cond_4f
    const-string v8, "Run "

    move-object v5, v8

    goto :goto_29

    .line 163
    .end local v6           #test:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    :cond_53
    return-void
.end method

.method private makeCompareName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "s"

    .prologue
    .line 245
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 247
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    move-object v1, p1

    .line 251
    :goto_a
    return-object v1

    :cond_b
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method


# virtual methods
.method public abstract getTestSuite()Ljava/lang/String;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Landroid/test/TestListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 102
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "android.test.performance"

    iget v2, p0, Landroid/test/TestListActivity;->mMode:I

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/test/TestListActivity;->mMode:I

    .line 105
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 107
    invoke-virtual {p0}, Landroid/test/TestListActivity;->getTestSuite()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/test/TestListActivity;->mSuite:Ljava/lang/String;

    .line 129
    :cond_25
    :goto_25
    iget-object v1, p0, Landroid/test/TestListActivity;->mSuite:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/test/TestRunner;->getChildren(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, children:[Ljava/lang/String;
    iget-object v1, p0, Landroid/test/TestListActivity;->sComparator:Ljava/util/Comparator;

    invoke-static {v6, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 133
    array-length v8, v6

    .line 134
    .local v8, len:I
    new-array v1, v8, [Ljava/lang/String;

    iput-object v1, p0, Landroid/test/TestListActivity;->mTests:[Ljava/lang/String;

    .line 135
    iget-object v1, p0, Landroid/test/TestListActivity;->mTests:[Ljava/lang/String;

    invoke-static {v6, v10, v1, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iget-object v1, p0, Landroid/test/TestListActivity;->mSuite:Ljava/lang/String;

    invoke-static {v1}, Landroid/test/TestRunner;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/test/TestListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    new-instance v3, Landroid/database/MatrixCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "name"

    aput-object v2, v1, v10

    const-string v2, "_id"

    aput-object v2, v1, v5

    invoke-direct {v3, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 140
    .local v3, cursor:Landroid/database/MatrixCursor;
    invoke-direct {p0, v3}, Landroid/test/TestListActivity;->addTestRows(Landroid/database/MatrixCursor;)V

    .line 142
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090003

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v10

    new-array v5, v5, [I

    const v1, 0x1020014

    aput v1, v5, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 149
    .local v0, adapter:Landroid/widget/CursorAdapter;
    invoke-virtual {p0, v0}, Landroid/test/TestListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    .end local v0           #adapter:Landroid/widget/CursorAdapter;
    .end local v3           #cursor:Landroid/database/MatrixCursor;
    .end local v6           #children:[Ljava/lang/String;
    .end local v8           #len:I
    :goto_6f
    return-void

    .line 108
    :cond_70
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.RUN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 112
    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.intent.action.RUN"

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_a7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    :goto_8a
    invoke-direct {v9, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 116
    .local v9, ntent:Landroid/content/Intent;
    const-string v1, "com.android.testharness"

    const-string v2, "com.android.testharness.RunTest"

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-virtual {v9, v7}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 119
    const-string v1, "package"

    invoke-virtual {p0}, Landroid/test/TestListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v9}, Landroid/test/TestListActivity;->startActivity(Landroid/content/Intent;)V

    .line 121
    invoke-virtual {p0}, Landroid/test/TestListActivity;->finish()V

    goto :goto_6f

    .line 112
    .end local v9           #ntent:Landroid/content/Intent;
    :cond_a7
    invoke-virtual {p0}, Landroid/test/TestListActivity;->getTestSuite()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_8a

    .line 123
    :cond_b0
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 125
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_ce

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_ca
    iput-object v1, p0, Landroid/test/TestListActivity;->mSuite:Ljava/lang/String;

    goto/16 :goto_25

    :cond_ce
    const/4 v1, 0x0

    goto :goto_ca
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 172
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 173
    const-string v0, "Regression Mode"

    invoke-interface {p1, v1, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Landroid/test/TestListActivity;->mRegressionItem:Landroid/view/MenuItem;

    .line 174
    const-string v0, "Performance Mode"

    invoke-interface {p1, v1, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Landroid/test/TestListActivity;->mPerformanceItem:Landroid/view/MenuItem;

    .line 175
    const-string v0, "Profiling Mode"

    invoke-interface {p1, v1, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Landroid/test/TestListActivity;->mProfilingItem:Landroid/view/MenuItem;

    .line 176
    invoke-interface {p1, v1, v1, v1}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 177
    return v1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 216
    .local v0, intent:Landroid/content/Intent;
    if-nez p3, :cond_30

    .line 222
    const-string v2, "com.android.testharness"

    const-string v3, "com.android.testharness.RunTest"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v2, "android.intent.action.RUN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iget-object v2, p0, Landroid/test/TestListActivity;->mSuite:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 239
    :goto_1c
    const-string v2, "android.test.performance"

    iget v3, p0, Landroid/test/TestListActivity;->mMode:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    const-string v2, "package"

    invoke-virtual {p0}, Landroid/test/TestListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0, v0}, Landroid/test/TestListActivity;->startActivity(Landroid/content/Intent;)V

    .line 242
    return-void

    .line 228
    :cond_30
    iget-object v2, p0, Landroid/test/TestListActivity;->mTests:[Ljava/lang/String;

    const/4 v3, 0x1

    sub-int v3, p3, v3

    aget-object v1, v2, v3

    .line 229
    .local v1, test:Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/test/TestRunner;->isTestSuite(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 230
    invoke-virtual {p0}, Landroid/test/TestListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    :goto_51
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1c

    .line 233
    :cond_59
    const-string v2, "com.android.testharness"

    const-string v3, "com.android.testharness.RunTest"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_51
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 182
    iget-object v0, p0, Landroid/test/TestListActivity;->mRegressionItem:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_9

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Landroid/test/TestListActivity;->mMode:I

    .line 190
    :cond_8
    :goto_8
    return v1

    .line 184
    :cond_9
    iget-object v0, p0, Landroid/test/TestListActivity;->mPerformanceItem:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_10

    .line 185
    iput v1, p0, Landroid/test/TestListActivity;->mMode:I

    goto :goto_8

    .line 186
    :cond_10
    iget-object v0, p0, Landroid/test/TestListActivity;->mProfilingItem:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_8

    .line 187
    const/4 v0, 0x2

    iput v0, p0, Landroid/test/TestListActivity;->mMode:I

    goto :goto_8
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 195
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 196
    iget v0, p0, Landroid/test/TestListActivity;->mMode:I

    packed-switch v0, :pswitch_data_1c

    .line 209
    :goto_9
    return v1

    .line 198
    :pswitch_a
    iget-object v0, p0, Landroid/test/TestListActivity;->mRegressionItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_9

    .line 202
    :pswitch_10
    iget-object v0, p0, Landroid/test/TestListActivity;->mPerformanceItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_9

    .line 206
    :pswitch_16
    iget-object v0, p0, Landroid/test/TestListActivity;->mProfilingItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_9

    .line 196
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_a
        :pswitch_10
        :pswitch_16
    .end packed-switch
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 168
    return-void
.end method
