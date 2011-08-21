.class final Lcom/android/settings/bluetooth/BluetoothProfilePreference;
.super Landroid/preference/Preference;
.source "BluetoothProfilePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mExpanded:Z

.field private mOnExpandClickListener:Landroid/view/View$OnClickListener;

.field private final mProfile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

.field private mProfileDrawable:Landroid/graphics/drawable/Drawable;

.field private mProfileExpandView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 1
    .parameter "context"
    .parameter "profile"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothProfilePreference;->mProfile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 48
    const v0, 0x7f040036

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothProfilePreference;->setWidgetLayoutResource(I)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothProfilePreference;->setExpanded(Z)V

    .line 50
    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothProfilePreference;->mExpanded:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 73
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 74
    .local v0, btProfile:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothProfilePreference;->mProfileDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    const v1, 0x7f0f009f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothProfilePreference;->mProfileExpandView:Landroid/widget/ImageView;

    .line 77
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothProfilePreference;->mProfile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    invoke-interface {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothProfilePreference;->mProfileExpandView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothProfilePreference;->mProfileExpandView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothProfilePreference;->mProfile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 80
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothProfilePreference;->mProfileExpandView:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothProfilePreference;->mExpanded:Z

    if-eqz v2, :cond_0

    const v2, 0x1080268

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    :goto_1
    return-void

    .line 80
    :cond_0
    const v2, 0x108026f

    goto :goto_0

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothProfilePreference;->mProfileExpandView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothProfilePreference;->mProfileExpandView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothProfilePreference;->mOnExpandClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 91
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothProfilePreference;->mExpanded:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothProfilePreference;->setExpanded(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothProfilePreference;->mOnExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 95
    :cond_0
    return-void

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExpanded(Z)V
    .locals 0
    .parameter "expanded"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothProfilePreference;->mExpanded:Z

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothProfilePreference;->notifyChanged()V

    .line 59
    return-void
.end method

.method public setOnExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothProfilePreference;->mOnExpandClickListener:Landroid/view/View$OnClickListener;

    .line 54
    return-void
.end method

.method public setProfileDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothProfilePreference;->mProfileDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    return-void
.end method
