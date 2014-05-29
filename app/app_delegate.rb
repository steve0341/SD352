class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
  	Parse.setApplicationID("DedmZC1EtQKuG3VBhMfkrLgOPHqBEAzFkZL7EomT", clientKey:"L6mQQN7gfwCi4oqbinuWq8BLndp5punsvKVVNIts")
    true
  end

  def viewDidAppear(animated)
  	display_login unless PFUser.currentUser
  end

  def display_loging
  	@login = PFLogInViewController.alloc.init
  	@login.fields = PFLogInFieldsUsernameAndPassword | PFLogInFieldsLogInButton | PFLogInFieldsSignUpButton
  	@login.delegate = self
  	@login.signUpController.delegate = self
  	self.presentModalViewController(@login, animated:true)
  end

  def logInViewController(logIn, didLogInUser:user)
  	@login.dismissModalViewControllerAnimated(true)
  end
end
