.class Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;
.super Ljava/lang/Object;
.source "MusicPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/jumper/MusicPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncPreferenceUpdate"
.end annotation


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mValue:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/android/music/jumper/MusicPreferences;


# direct methods
.method public constructor <init>(Lcom/google/android/music/jumper/MusicPreferences;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "value"

    .prologue
    .line 627
    iput-object p1, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    iput-object p2, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mKey:Ljava/lang/String;

    .line 629
    iput-object p3, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    .line 630
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 633
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {v2}, Lcom/google/android/music/jumper/MusicPreferences;->access$400(Lcom/google/android/music/jumper/MusicPreferences;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 634
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 635
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 649
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 650
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {v2}, Lcom/google/android/music/jumper/MusicPreferences;->access$500(Lcom/google/android/music/jumper/MusicPreferences;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 651
    :try_start_0
    iget-object v3, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {v3}, Lcom/google/android/music/jumper/MusicPreferences;->access$500(Lcom/google/android/music/jumper/MusicPreferences;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mKey:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 652
    .local v1, inFlightObject:Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    if-ne v1, v3, :cond_0

    .line 655
    iget-object v3, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {v3}, Lcom/google/android/music/jumper/MusicPreferences;->access$500(Lcom/google/android/music/jumper/MusicPreferences;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mKey:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    return-void

    .line 636
    .end local v1           #inFlightObject:Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 637
    iget-object v3, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 638
    :cond_2
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 639
    iget-object v3, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 640
    :cond_3
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 641
    iget-object v3, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 642
    :cond_4
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Float;

    if-eqz v2, :cond_5

    .line 643
    iget-object v3, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 644
    :cond_5
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    .line 645
    iget-object v3, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 647
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown value type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;->mValue:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 657
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
