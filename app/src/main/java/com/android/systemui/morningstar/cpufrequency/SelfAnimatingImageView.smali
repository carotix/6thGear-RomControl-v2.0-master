.class public Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;
.super Landroid/widget/ImageView;
.source "SelfAnimatingImageView.java"


# instance fields
.field animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field mAttached:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initValues()V
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0xc8

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_0

    move v1, v0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateAnim()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;->mAttached:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0
.end method

.method private updateAnimationState(Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    instance-of v1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    :cond_2
    instance-of v1, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_3

    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_0

    :cond_3
    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_0
.end method

.method private updateAnimationsState()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;->updateAnimationState(Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;->updateAnimationState(Landroid/graphics/drawable/Drawable;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;->mAttached:Z

    invoke-direct {p0}, Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;->updateAnim()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;->mAttached:Z

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;->updateAnimationsState()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowFocusChanged(Z)V

    invoke-direct {p0}, Lcom/android/systemui/morningstar/cpufrequency/SelfAnimatingImageView;->updateAnimationsState()V

    return-void
.end method
