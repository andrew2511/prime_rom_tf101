.class Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;
.super Ljava/lang/Thread;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardScanThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    }
.end annotation


# instance fields
.field private mCanceled:Z

.field private mCheckedPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGotIOException:Z

.field private mRootDirectory:Ljava/io/File;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/io/File;)V
    .locals 3
    .parameter
    .parameter "sdcardDirectory"

    .prologue
    const/4 v1, 0x0

    .line 570
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 571
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 572
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z

    .line 573
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    .line 574
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    .line 575
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 577
    .local v0, powerManager:Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "VCardImport"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 580
    return-void
.end method

.method private getVCardFileRecursively(Ljava/io/File;)V
    .locals 13
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 620
    iget-boolean v10, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v10, :cond_0

    .line 621
    new-instance v10, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;

    invoke-direct {v10, p0, v12}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V

    throw v10

    .line 625
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 626
    .local v5, files:[Ljava/io/File;
    if-nez v5, :cond_2

    .line 627
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 628
    .local v2, currentDirectoryPath:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".android_secure"

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 630
    .local v8, secureDirectoryPath:Ljava/lang/String;
    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 631
    const-string v10, "VCardImport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "listFiles() returned null (directory: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    .end local v2           #currentDirectoryPath:Ljava/lang/String;
    .end local v8           #secureDirectoryPath:Ljava/lang/String;
    :cond_1
    return-void

    .line 635
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v0, v6

    .line 636
    .local v3, file:Ljava/io/File;
    iget-boolean v10, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v10, :cond_3

    .line 637
    new-instance v10, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;

    invoke-direct {v10, p0, v12}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V

    throw v10

    .line 639
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 640
    .local v1, canonicalPath:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 635
    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 644
    :cond_5
    iget-object v10, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    invoke-interface {v10, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 646
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 647
    invoke-direct {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->getVCardFileRecursively(Ljava/io/File;)V

    goto :goto_1

    .line 648
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".vcf"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 650
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 651
    .local v4, fileName:Ljava/lang/String;
    new-instance v9, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-direct {v9, v4, v1, v10, v11}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 653
    .local v9, vcardFile:Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;
    iget-object v10, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v10}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$700(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 660
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 663
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 666
    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 584
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    invoke-static {v3, v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$702(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;

    .line 586
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 587
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    invoke-direct {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->getVCardFileRecursively(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 593
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 596
    :goto_0
    iget-boolean v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v3, :cond_0

    .line 597
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v3, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$702(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;

    .line 600
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$1000(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 601
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v3, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$1002(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 603
    iget-boolean v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z

    if-eqz v3, :cond_1

    .line 604
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v4, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v5, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v6, 0x7f07000d

    invoke-direct {v4, v5, v6}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;I)V

    invoke-virtual {v3, v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 616
    :goto_1
    return-void

    .line 588
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 589
    .local v1, e:Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 593
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 590
    .end local v1           #e:Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 591
    .local v1, e:Ljava/io/IOException;
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 593
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3

    .line 605
    :cond_1
    iget-boolean v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v3, :cond_2

    .line 606
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    goto :goto_1

    .line 608
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$700(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 609
    .local v2, size:I
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    .line 610
    .local v0, context:Landroid/content/Context;
    if-nez v2, :cond_3

    .line 611
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v4, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v5, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v6, 0x7f070008

    invoke-direct {v4, v5, v6}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;I)V

    invoke-virtual {v3, v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 613
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$1100(Lcom/android/contacts/vcard/ImportVCardActivity;)V

    goto :goto_1
.end method
