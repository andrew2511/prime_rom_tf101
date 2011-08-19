.class Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;
.super Landroid/os/AsyncTask;
.source "DeviceAuthorizationChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

.field private final synthetic val$clientName:Ljava/lang/String;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->val$clientName:Ljava/lang/String;

    .line 169
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;)Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;
    .locals 5
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 173
    :try_start_0
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->val$username:Ljava/lang/String;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->val$password:Ljava/lang/String;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->val$clientName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationManager;->getAvailableServices(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-object v1

    .line 174
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 175
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;

    invoke-direct {v1, v0}, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;-><init>(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->doInBackground([Ljava/lang/Void;)Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, result:Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;,"Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult<Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v1, v1, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 181
    .restart local p0
    :cond_1
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>(Ljava/lang/Object;)V

    .line 182
    .local v3, flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    const/4 v11, 0x0

    .line 184
    .local v11, services:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;->getResult()Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/util/List;

    move-object v11, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 216
    :goto_1
    if-nez v11, :cond_2

    .line 217
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->access$2(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;)V

    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 187
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 188
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->access$2(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;)V

    .line 189
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    const v4, 0x7f09001c

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 191
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 192
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v1, v1, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090060

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .end local v8           #e:Ljava/io/IOException;
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7$1;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->val$username:Ljava/lang/String;

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->val$password:Ljava/lang/String;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->val$clientName:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 200
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    const v4, 0x7f09005c

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7$2;

    invoke-direct {v4, p0, v3}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 212
    :catch_1
    move-exception v1

    move-object v8, v1

    .line 213
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    const v4, 0x7f09001a

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->access$3(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;Ljava/lang/String;)V

    goto :goto_1

    .line 220
    .end local v8           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v12, 0x0

    .line 221
    .local v12, valids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 230
    if-nez v12, :cond_8

    .line 231
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->access$2(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;)V

    .line 232
    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090021

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .end local v3           #flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    move-result-object v2

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->access$3(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    .restart local v3       #flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 222
    .local v10, serviceName:Ljava/lang/String;
    invoke-static {v10}, Lcom/newspaperdirect/pressreader/android/core/Service;->get(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v9

    .line 223
    .local v9, service:Lcom/newspaperdirect/pressreader/android/core/Service;
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/newspaperdirect/pressreader/android/core/Service;->isExplicitlyActivated()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v9}, Lcom/newspaperdirect/pressreader/android/core/Service;->getUserName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->val$username:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 225
    :cond_5
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->isSmartEdition()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    const v4, 0x7f09004b

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    :cond_6
    if-nez v12, :cond_7

    new-instance v12, Ljava/util/ArrayList;

    .end local v12           #valids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .restart local v12       #valids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 238
    .end local v9           #service:Lcom/newspaperdirect/pressreader/android/core/Service;
    .end local v10           #serviceName:Ljava/lang/String;
    :cond_8
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->val$username:Ljava/lang/String;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->val$password:Ljava/lang/String;

    .end local v3           #flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->val$clientName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, p0}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->access$4(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 240
    .restart local v3       #flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    .restart local p0
    :cond_9
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->access$2(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;)V

    .line 241
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v12, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 242
    .local v7, items:[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 243
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    const v4, 0x7f090081

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 244
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7$3;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->val$username:Ljava/lang/String;

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->val$password:Ljava/lang/String;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->val$clientName:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7$3;-><init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v8, v7, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$7;->onPostExecute(Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;)V

    return-void
.end method
