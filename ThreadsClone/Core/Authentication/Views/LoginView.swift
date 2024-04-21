import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    @State private var isLoggedIn: Bool = false // Thêm state để theo dõi trạng thái đăng nhập

    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Image("threads")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                VStack {
                    TextField("Enter your email", text: $viewModel.email)
                        .autocapitalization(.none)
                        .modifier(TextFieldModifier())
                    TextField("Enter your password", text: $viewModel.password)
                        .modifier(TextFieldModifier())
                }
                NavigationLink {
                    Text("Forgot password?")
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                // Sử dụng NavigationLink để điều hướng khi ấn nút "Login"
                NavigationLink(destination: FeedView(), isActive: $isLoggedIn) {
                    Button {
                        Task {
                            try await viewModel.login()
                            isLoggedIn = true // Đánh dấu là đã đăng nhập thành công
                        }
                    } label: {
                        Text("Login")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 353, height: 44)
                            .background(.black)
                            .cornerRadius(8)
                    }
                }
                
                Spacer()
                Divider()
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        Text("Sign up")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
