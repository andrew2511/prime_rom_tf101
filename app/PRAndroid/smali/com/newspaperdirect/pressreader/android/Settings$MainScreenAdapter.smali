.class Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;
.super Landroid/widget/BaseAdapter;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainScreenAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/Settings;


# direct methods
.method private constructor <init>(Lcom/newspaperdirect/pressreader/android/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/Settings;Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/Settings;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x7

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 155
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 159
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03001b

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 160
    .local v3, result:Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 204
    .end local p1
    :goto_0
    return-object v3

    .line 162
    .restart local p1
    :pswitch_0
    const v6, 0x7f0c0074

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    const v7, 0x7f090090

    invoke-virtual {v6, v7}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const v6, 0x7f0c0075

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    const v7, 0x7f090091

    invoke-virtual {v6, v7}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 166
    .restart local p1
    :pswitch_1
    const v6, 0x7f0c0074

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    const v7, 0x7f090092

    invoke-virtual {v6, v7}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const v6, 0x7f0c0075

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    const v7, 0x7f090093

    invoke-virtual {v6, v7}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 170
    .restart local p1
    :pswitch_2
    const v6, 0x7f0c0074

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    const v7, 0x7f090099

    invoke-virtual {v6, v7}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    const v6, 0x7f0c0075

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    const v7, 0x7f09009a

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    const v11, 0x7f09004a

    invoke-virtual {v10, v11}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 174
    .restart local p1
    :pswitch_3
    const v6, 0x7f0c0074

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    const v7, 0x7f09009d

    invoke-virtual {v6, v7}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    const v6, 0x7f0c0075

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    const v7, 0x7f09009e

    invoke-virtual {v6, v7}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 178
    .restart local p1
    :pswitch_4
    const v6, 0x7f0c0074

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    const v7, 0x7f090097

    invoke-virtual {v6, v7}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    const v6, 0x7f0c0075

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    const v7, 0x7f090098

    invoke-virtual {v6, v7}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 182
    .restart local p1
    :pswitch_5
    const v6, 0x7f0c0074

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    const v7, 0x7f09009b

    invoke-virtual {v6, v7}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    const v6, 0x7f0c0075

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    const v7, 0x7f09009c

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    const v11, 0x7f09004a

    invoke-virtual {v10, v11}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 186
    .restart local p1
    :pswitch_6
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 187
    .local v0, color:I
    const v6, 0x7f0c0074

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 188
    .local v4, text:Landroid/widget/TextView;
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    const v7, 0x7f0900a1

    invoke-virtual {v6, v7}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    const-string v5, ""

    .line 192
    .local v5, version:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/Settings;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 193
    .local v2, pi:Landroid/content/pm/PackageInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 197
    const v6, 0x7f0c0075

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #text:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 198
    .restart local v4       #text:Landroid/widget/TextView;
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    const v7, 0x7f0900a0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/Settings$MainScreenAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    const v11, 0x7f09004a

    invoke-virtual {v10, v11}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 194
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 195
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Invalid package name"

    invoke-direct {v6, v7, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
