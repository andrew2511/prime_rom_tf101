.class Lcom/android/server/AccessibilityManagerService$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AccessibilityManagerService;->registerPackageChangeAndBootCompletedBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AccessibilityManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 18
    .parameter "intent"
    .parameter "packages"
    .parameter "uid"
    .parameter "doit"

    .prologue
    .line 162
    iget-object v9, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v9, v9, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, changed:Z
    :try_start_6
    iget-object v10, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    #getter for: Lcom/android/server/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;
    invoke-static {v10}, Lcom/android/server/AccessibilityManagerService;->access$400(Lcom/android/server/AccessibilityManagerService;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 165
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3a

    .line 166
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 167
    .local v2, comp:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, compPkg:Ljava/lang/String;
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_23
    if-ge v4, v6, :cond_10

    aget-object v7, v0, v4

    .line 169
    .local v7, pkg:Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    .line 170
    if-nez p4, :cond_33

    .line 171
    const/4 v10, 0x1

    monitor-exit v9

    move v9, v10

    .line 192
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #comp:Landroid/content/ComponentName;
    .end local v3           #compPkg:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v7           #pkg:Ljava/lang/String;
    .end local p1
    :goto_32
    return v9

    .line 173
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #comp:Landroid/content/ComponentName;
    .restart local v3       #compPkg:Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #pkg:Ljava/lang/String;
    .restart local p1
    :cond_33
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 174
    const/4 v1, 0x1

    .line 168
    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 178
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #comp:Landroid/content/ComponentName;
    .end local v3           #compPkg:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v7           #pkg:Ljava/lang/String;
    :cond_3a
    if-eqz v1, :cond_83

    .line 179
    iget-object v10, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    #getter for: Lcom/android/server/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;
    invoke-static {v10}, Lcom/android/server/AccessibilityManagerService;->access$400(Lcom/android/server/AccessibilityManagerService;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 180
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .end local p1
    .local v8, str:Ljava/lang/StringBuilder;
    :goto_4b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6d

    .line 182
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_5c

    .line 183
    const/16 v10, 0x3a

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    :cond_5c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4b

    .line 193
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .end local v8           #str:Ljava/lang/StringBuilder;
    :catchall_6a
    move-exception v10

    monitor-exit v9
    :try_end_6c
    .catchall {:try_start_6 .. :try_end_6c} :catchall_6a

    throw v10

    .line 187
    .restart local v5       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .restart local v8       #str:Ljava/lang/StringBuilder;
    :cond_6d
    :try_start_6d
    iget-object v10, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v10, v10, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "enabled_accessibility_services"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 190
    iget-object v10, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    #calls: Lcom/android/server/AccessibilityManagerService;->manageServicesLocked()V
    invoke-static {v10}, Lcom/android/server/AccessibilityManagerService;->access$300(Lcom/android/server/AccessibilityManagerService;)V

    .line 192
    .end local v8           #str:Ljava/lang/StringBuilder;
    :cond_83
    const/4 v10, 0x0

    monitor-exit v9
    :try_end_85
    .catchall {:try_start_6d .. :try_end_85} :catchall_6a

    move v9, v10

    goto :goto_32
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 198
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    if-ne v0, v1, :cond_44

    .line 199
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_f
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    #calls: Lcom/android/server/AccessibilityManagerService;->populateAccessibilityServiceListLocked()V
    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$200(Lcom/android/server/AccessibilityManagerService;)V

    .line 203
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v2, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v2, v2, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_3f

    move v2, v6

    :goto_28
    #setter for: Lcom/android/server/AccessibilityManagerService;->mIsEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/AccessibilityManagerService;->access$502(Lcom/android/server/AccessibilityManagerService;Z)Z

    .line 207
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    #getter for: Lcom/android/server/AccessibilityManagerService;->mIsEnabled:Z
    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$500(Lcom/android/server/AccessibilityManagerService;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 208
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    #calls: Lcom/android/server/AccessibilityManagerService;->updateClientsLocked()V
    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$600(Lcom/android/server/AccessibilityManagerService;)V

    .line 211
    :cond_38
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    #calls: Lcom/android/server/AccessibilityManagerService;->manageServicesLocked()V
    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$300(Lcom/android/server/AccessibilityManagerService;)V

    .line 212
    monitor-exit v0

    .line 218
    :goto_3e
    return-void

    :cond_3f
    move v2, v5

    .line 203
    goto :goto_28

    .line 212
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_f .. :try_end_43} :catchall_41

    throw v1

    .line 217
    :cond_44
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_3e
.end method

.method public onSomePackagesChanged()V
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_5
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    #calls: Lcom/android/server/AccessibilityManagerService;->populateAccessibilityServiceListLocked()V
    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$200(Lcom/android/server/AccessibilityManagerService;)V

    .line 155
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    #calls: Lcom/android/server/AccessibilityManagerService;->manageServicesLocked()V
    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$300(Lcom/android/server/AccessibilityManagerService;)V

    .line 156
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v1
.end method
